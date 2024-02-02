# frozen_string_literal: true
require './packs/hoge/lib/proto/hoge/hoge_services_pb'

module Hoge
  class HogeServer < HogeService
    def get_hoge(_request, _call = nil)
      HogeResponse.new(message: 'Hello from HogeServer!')
    end
  end
end
