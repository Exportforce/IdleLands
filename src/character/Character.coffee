
RestrictedNumber = require "restricted-number"
{EventEmitter} = require 'events'

class Character extends EventEmitter

  constructor: (options) ->
    [@name, @identifier] = [options.name, options.identifier]
    @hp = new RestrictedNumber 0, 20, 20
    @mp = new RestrictedNumber 0, 0, 0
    @special = new RestrictedNumber 0, 0, 0
    @level = new RestrictedNumber 0, 100, 0

    @

  num2dir: (dir,x,y) ->
    switch dir
      when 1 then return {x: x-1, y: y-1}
      when 2 then return {x: x, y: y-1}
      when 3 then return {x: x+1, y: y-1}
      when 4 then return {x: x-1, y: y}

      when 6 then return {x: x+1, y: y}
      when 7 then return {x: x-1, y: y+1}
      when 8 then return {x: x, y: y+1}
      when 9 then return {x: x+1, y: y+1}

      else return {x: x, y: y}

  moveAction: ->

  decisionAction: ->

  combatAction: ->

module.exports = exports = Character