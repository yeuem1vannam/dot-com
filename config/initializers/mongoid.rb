module Mongoid::Document
  @@models = []

  def self.included base
    @@models << base
  end

  def self.models
    @@models
  end
end