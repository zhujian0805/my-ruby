#!/usr/bin/ruby


IO.foreach("/etc/passwd"){
    |block|
    puts block
}
