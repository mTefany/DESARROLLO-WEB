
from flask import Flask, request
from flask.templating import render_template
from calc.Aleatorio import Aleatorio
from calc.Estadistica import Estadistica
from calc.Pronostico import Pronostico
from calc.Simulacion import Simulacion

est = Estadistica()
aleatorio = Aleatorio()
pronostico = Pronostico()
simulacion = Simulacion()

app = Flask(__name__)
app.config['SEND_FILE_MAX_AGE_DEFAULT'] = 0


@app.after_request
def add_header(r):
    """
    Add headers to both force latest IE rendering engine or Chrome Frame,
    and also to cache the rendered page for 10 minutes.
    """
    r.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    r.headers["Pragma"] = "no-cache"
    r.headers["Expires"] = "0"
    r.headers['Cache-Control'] = 'public, max-age=0'
    return r


@app.route('/')
def index():
    return render_template('index.html')

@app.route('/FrecuenciaFecha')
def grafica1():
    return render_template('grafica1.html',
        imagen1 = est.graficoFechaDolares())
    
@app.route('/Preciomercado')
def grafica2():
    return render_template('grafica2.html',
        imagen2 = est.graficoFrecuenciaPrecio())
    
@app.route('/Pagomonedas')
def grafica3():
    return render_template('grafica3.html',
        imagen3 = est.graficocriptomonedas())

@app.route('/Datos')
def proyectoDatos():
    return render_template('proyectoDatos.html',
        data=est.datosExcel())

@app.route('/Numerosaleatorios')
def aleatorios():
    return render_template('numerosaleatorios.html')

@app.route('/Pronosticos')
def pronosticos():
    return render_template('pronosticos.html')


@app.route('/inventario', methods=['GET'])
def inventario():
    data = simulacion.modeloInventario()
    return render_template('inventario.html',
        datos=data['datos'],
        df = data['df'],
        imagen = data['img_url'])
    

@app.route('/lineaespera', methods=['GET'])
def banco():
    data = simulacion.banco()
    return render_template('linea.html',
        df = data['df'],
        imagen = data['img_url'])

@app.route('/Analisis')
def proyectoAnalisis():
    return render_template('proyectoAnalisis.html',
        imagen1 = est.graficoFechaDolares(),
        imagen2 = est.graficoFrecuenciaPrecio(),
        imagen3 = est.graficocriptomonedas())

@app.route('/cuadradosMedios', methods=['POST', 'GET'])
def cuadradosMedio():
    if request.method == 'POST':
        try:
            data = aleatorio.cuadradosMedios(
                int(request.form['n']),
                int(request.form['r']))

            return render_template('cuadradosMedios.html',
                datos = data[0],
                imagen1 = data[1])
        except Exception as error:
            return render_template('cuadradosMedios.html',
                error=error
            )
    elif request.method == 'GET':
        return render_template('cuadradosMedios.html')

@app.route('/congruenciaLineal', methods=['POST', 'GET'])
def congruenciaLineal():
    if request.method == 'POST':
        try:
            data = aleatorio.congruencialLineal(
                int(request.form['n']),
                int(request.form['x']),
                int(request.form['a']),
                int(request.form['c']),
                int(request.form['m']))

            return render_template('congruenciaLineal.html',
                datos = data[0],
                imagen = data[1])
        except Exception as error:
            return render_template('congruenciaLineal.html',
                error = error)

    elif request.method == 'GET':
        return render_template('congruenciaLineal.html')

@app.route('/congruencialMultiplicativo', methods=['POST', 'GET'])
def congruencialMultiplicativo():
    if request.method == 'POST':
        try:
            data = aleatorio.congruencialMultiplicativo(
                int(request.form['n']),
                int(request.form['x']),
                int(request.form['a']),
                int(request.form['m']))

            return render_template('congruencialMultiplicativo.html',
                datos = data[0],
                imagen = data[1])
        except Exception as error:
            return render_template('congruencialMultiplicativo.html',
                error = error)

    elif request.method == 'GET':
        return render_template('congruencialMultiplicativo.html')

@app.route('/distribucionPoisson', methods=['POST', 'GET'])
def distribucionPoisson():
    if request.method == 'POST':
        try:
            data = aleatorio.distribucionPoisson(
                int(request.form['landa']))

            return render_template('distribucionPoisson.html',
                imagen = data)
        except Exception as error:
            return render_template('distribucionPoisson.html',
                error = error)

    elif request.method == 'GET':
        return render_template('distribucionPoisson.html')

@app.route('/promedioMovil', methods=['POST', 'GET'])
def promedioMovil():
    if request.method == 'POST':
        try:
            data = pronostico.promedioMovil(
                request.form['x'],
                request.form['y'],
                request.form['xlbl'],
                request.form['ylbl'])

            return render_template('promedioMovil.html',
                datos = data[0],
                imagen = data[1],
                mediaMovil3 = data[2],
                mediaMovil4 = data[3])
        except Exception as error:
            return render_template('promedioMovil.html',
                error = error)

    elif request.method == 'GET':
        return render_template('promedioMovil.html')


@app.route('/suavizacionExponencial', methods=['POST', 'GET'])
def suavizacionExponencial():
    if request.method == 'POST':
        try:
            data = pronostico.suavizacionExponencial(
                request.form['x'],
                request.form['y'],
                request.form['xlbl'],
                request.form['ylbl'])

            return render_template('suavizacionExponencial.html',
                datos = data,
                cargar = True)
        except Exception as error:
            return render_template('suavizacionExponencial.html',
                error = error)

    elif request.method == 'GET':
        return render_template('suavizacionExponencial.html')

@app.route('/regresionLineal', methods=['POST', 'GET'])
def regresionLineal():
    if request.method == 'POST':
        try:
            data = pronostico.regresionLineal(
                request.form['x'],
                request.form['y'],
                request.form['xlbl'],
                request.form['ylbl'])

            return render_template('regresionLineal.html',
                imagen = data)
        except Exception as error:
            return render_template('regresionLineal.html',
                error = error)

    elif request.method == 'GET':
        return render_template('regresionLineal.html')

@app.route('/regresionCuadratica', methods=['POST', 'GET'])
def regresionCuadratica():
    if request.method == 'POST':
        try:
            data = pronostico.regresionLinealCuadratica(
                request.form['x'],
                request.form['y'],
                request.form['xlbl'],
                request.form['ylbl'])

            return render_template('regresionCuadratica.html',
                imagen = data)
        except Exception as error:
            return render_template('regresionCuadratica.html',
                error = error)

    elif request.method == 'GET':
        return render_template('regresionCuadratica.html')
    
    
    # jjdjd
        
@app.route('/sistemaMontecarlo')
def sistemaMontecarlo():
    return render_template('sistemaMontecarlo.html')

@app.route('/printSistemaMontecarlo')
def printSistemaMontecarlo():
    return render_template('printSistemaMontecarlo.html')

@app.route('/calcularMontecarlo', methods=['GET', 'POST'])
def calcularMontecarlo():
    tipoArch= request.form.get("tipoarchivo")
    n1 = request.form.get("numeroIteraciones", type=int)
    x01 = request.form.get("semilla", type=int)
    a1 = request.form.get("multiplicador", type=int)
    c1 = request.form.get("incremento", type=int)
    m1 = request.form.get("modulo", type=int)

    pago = request.form.get("x")
    probabilidad = request.form.get("y")

    file = request.files['file'].read()

    import pandas as pd
    import numpy as np
    import matplotlib.pyplot as plt
    from pandas import ExcelWriter
    from matplotlib import pyplot as plt
    from matplotlib.backends.backend_agg import FigureCanvasAgg
    from matplotlib.figure import Figure
    import io
    from io import BytesIO
    import base64
    import itertools
    import pandas as pd


    if tipoArch=='1':
        
        file = pd.read_excel(file)
        
        
    elif tipoArch=='2':
        file = pd.read_csv(io.StringIO(file.decode('utf-8')))
        
    elif tipoArch=='3':
        file = pd.read_json(file)

    # file = pd.read_excel(file)
    # tot = pd.DataFrame(file)
    #x = a["X"]
    #tot = a["Y"]

    # datos = {
    # 'Pago' : [0,500,1000,2000,5000,8000,10000],
    # 'Probabilidad': [0.83,0.06,0.05,0.02,0.02,0.01,0.01]
    # }
    df = pd.DataFrame(file)
    # Array para guardar los resultados
    dataArray = []
    # Suma de probabilidad
    sumProbabilidad = np.cumsum(df[probabilidad])
    df['FDP'] = sumProbabilidad
    # Obtenemos los datos mínimos
    datosMin = df['FDP']+0.001
    # Obtenemos los datos máximos
    datosMax = df['FDP']
    # Asignamos al DataFrame
    df['Min'] = datosMin
    df['Max'] = datosMax
    # Se establecen correctamente los datos mínimos
    df['Min'] = df['Min'].shift(periods=1, fill_value=0)
    df
        # n = Cantidad de tenedores de pólizas
    n = n1
    m = m1 # 2**32
    a = a1
    x0 = x01
    c = c1
    # Obtenemos los resultados
    x = [1] * n
    r = [0.1] * n
    for i in range(0, n):
        x[i] = ((a*x0)+c) % m
        x0 = x[i]
        r[i] = x0 / m
    # llenamos el DataFrame
    d = {'ri': r }
    dfMCL = pd.DataFrame(data=d)
    dfMCL

    # Valores máximos
    max = df['Max'].values
    # Valores mínimos
    min = df['Min'].values
    # Definimos el número de pagos
    n = 32
    
    # df = pd.DataFrame(df)

    # data1 = dffx.to_html(classes="table table-hover table-striped", justify="justify-all", border=0)
    
    # Función de búsqueda
    def busqueda(arrmin, arrmax, valor):
        
        for i in range (len(arrmin)):
            if valor >= arrmin[i] and valor <= arrmax[i]:
                return i
    #print(i)
        return -1
    xpos = dfMCL['ri']
    posi = [0] * n
    #print (n)
    for j in range(n):
        val = xpos[j]
        pos = busqueda(min,max,val)
        posi[j] = pos
    # Definiendo un índice para simular datos
    ind = [1,2,3,4,5,6,7]
    df["Indice"] = ind
    # Ordenamos el DataFrame
    df = df[['Indice',pago,probabilidad,'FDP','Min','Max']]
    # Array para guardar los datos
    simula = []
    for j in range(n):
        for i in range(n):
            sim = df.loc[df["Indice"]== posi[i]+1 ]
            simu = sim.filter([pago]).values
            iterator = itertools.chain(*simu)
                    
            for item in iterator:
                a=item
            simula.append(round(a,2))
    # Insertamos en el DataFrame los datos de simulación
    dfMCL["Simulación"] = pd.DataFrame(simula)
    # Sumamos 39 ya que el precio de la acción actual es de 39
    dfMCL["Pagos a tenedor"] = dfMCL["Simulación"]
# Suma de Pagos a tenedor
    data = dfMCL['Pagos a tenedor'].sum()
    dataArray.append(data)

# Imprimir resultado
    print('Suma de los pagos al tenedor:', data)
    # dat = pd.DataFrame(data)
    # prin_='Suma de los pagos al tenedor: ',data
    # data01=data
    # data01=str(data01)
    # data3=dat.to_html(
    #     classes="col-md-6 mb-3", justify="justify-all")
    dfMCL

    

    buf = io.BytesIO()
    plt.plot(dfMCL['Simulación'], label='Simulación', color='purple')
    plt.plot(dfMCL['Pagos a tenedor'], label='Costo', color='green')
    plt.legend()

    fig = plt.gcf()
    canvas = FigureCanvasAgg(fig)
    canvas.print_png(buf)
    fig.clear()
    plot_url = base64.b64encode(buf.getvalue()).decode('UTF-8')

    data1 = df.to_html(
        classes="dataTable table table-bordered table-hover", justify="justify-all", border=0)

    """ writer = ExcelWriter("static/file/data.xlsx")
    dfMCL.to_excel(writer, index=False)
    writer.save()

    dfMCL.to_csv("static/file/data.csv", index=False)
    """
    data2 = dfMCL.to_html(
        classes="dataTable table table-bordered table-hover", justify="justify-all", border=0)

    """ writer = ExcelWriter("static/file/data.xlsx")
    dfMCL.to_excel(writer, index=False)
    writer.save()

    dfMCL.to_csv("static/file/data.csv", index=False)
    """
    # data3 = data.to_html(
    #     classes="table table-hover table-striped", justify="justify-all", border=0)

    # """ writer = ExcelWriter("static/file/data.xlsx")
    # dfMCL.to_excel(writer, index=False)
    # writer.save()

    # dfMCL.to_csv("static/file/data.csv", index=False)
    # """
    return render_template('printSistemaMontecarlo.html', data=data1, data2=data2,data3=data, image=plot_url)
    # def busqueda(arrmin, arrmax, valor):


if __name__ == '__main__':
    app.run( host="0.0.0.0", port=5000,debug=True)
