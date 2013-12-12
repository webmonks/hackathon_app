class TokensController < ApplicationController
require 'barby'
require 'barby/outputter/png_outputter'
require 'barby/barcode/code_128'
  def index
    @tokens = Token.all
  end
end
