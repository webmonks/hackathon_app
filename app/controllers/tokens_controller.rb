class TokensController < ApplicationController
require 'barby'
require 'barby/outputter/png_outputter'
require 'barby/barcode/qr_code'
  before_filter :check_password
  def index
    @tokens = Token.all
  end
end
