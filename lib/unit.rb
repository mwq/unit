#!/usr/bin/env ruby
require 'quantity'
require 'treetop'

class Converter
  attr_accessor :amount, :from, :to

  def convert
    c = Quantity::Unit.for(from.to_sym).convert_proc(to.to_sym)

    a = c.call amount
    "#{"%.2f" % a} #{to}"
  rescue
   'oops didn\'t work' 
  end
end

class Unit
  def initialize command
    Treetop.load 'conversion'
    Treetop.load 'expression'
    @parser = ExpressionParser.new
    @command = command
  end

  def result
    parsed =  @parser.parse(@command)
    parsed.result
  end
end




