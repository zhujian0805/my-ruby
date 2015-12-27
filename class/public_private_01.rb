#!/usr/bin/ruby -w
class Foo
    def leak
        puts secret        #=> 'abracadabra'
        puts self.secret   #=> NoMethodError
    end

    private
    def secret
        'abracadabra'
    end
end

foo = Foo.new
foo.leak
