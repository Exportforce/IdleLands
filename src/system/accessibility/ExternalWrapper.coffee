

module.exports = exports = () ->

  @load = () =>

    @api = require "./API"
    @api.gameInstance = new (require "./../Game")
    @api.logger = @api.gameInstance.logManager.getLogger "API"
    @api.gameInstance.logManager.setLoggerLevel "API", "silly"

  @