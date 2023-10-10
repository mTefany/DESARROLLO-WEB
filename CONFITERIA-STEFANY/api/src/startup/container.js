const { createContainer, asClass, asValue, asFunction } = require('awilix');

const config = require('../config');
const app = require('./index');

// importar servicios HamburRouter
const { TradicionalService, GomaService, CakeService } = require('../services');

// importar controladores
const { TradicionalController, GomaController, CakeController } = require('../controllers');

// importar rutas
const Routes = require('../routes')
const { TradicionalRoutes, GomaRoutes, CakeRoutes } = require('../routes/index.routes');

// models
const { TradicionalModel, GomaModel, CakeModel} = require('../models');

// repositorios
const { TradicionalRepository, GomaRepository, CakeRepository} = require('../repositories');

const container = createContainer();
container
    .register(
        {
            app: asClass(app),
            router: asFunction(Routes).singleton(),
            config: asValue(config)
        }
    )
    .register(
        {
            CakeService: asClass(CakeService).singleton(),
            TradicionalService: asClass(TradicionalService).singleton(),
            GomaService: asClass(GomaService).singleton()
          
        }
    ).register(
        {
            CakeController: asClass(CakeController.bind(CakeController)).singleton(),
            TradicionalController: asClass(TradicionalController.bind(TradicionalController)).singleton(),
            GomaController: asClass(GomaController.bind(GomaController)).singleton()

        }
    ).register(
        {
            CakeRoutes: asFunction(CakeRoutes).singleton(),
            TradicionalRoutes: asFunction(TradicionalRoutes).singleton(),
            GomaRoutes: asFunction(GomaRoutes).singleton()

        }
    ).register(
        {
            Cake: asValue(CakeModel),
            Tradicional: asValue(TradicionalModel),
            Goma: asValue(GomaModel)
        }
    ).register(
        {
            CakeRepository: asClass(CakeRepository).singleton(),
            TradicionalRepository: asClass(TradicionalRepository).singleton(),
            GomaRepository: asClass(GomaRepository).singleton()

        }
    )


module.exports = container;