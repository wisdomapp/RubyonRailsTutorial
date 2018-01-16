class HeloController < ApplicationController
    layout 'helo'

    def index
        @header='layout sample'
        @footer='copyright sora'
        @title='New Layout'
        @msg='this is sample page'
    end

end
