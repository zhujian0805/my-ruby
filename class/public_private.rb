#!/usr/bin/ruby -w
#
class Foo
    def hello
        'Hello'
    end

    private
    def secret
        'abracadabra'
    end
end

foo = Foo.new
foo.hello     #=> 'Hello'
foo.secret    #=> NoMethodError
