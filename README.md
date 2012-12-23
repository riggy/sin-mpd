sin-mpd
=======

Simple web client for MPD mainly based on:
 - [sinatra](http://www.sinatrarb.com) - ruby framework
 - [librmpd](http://librmpd.rubyforge.org) - ruby library, for connecting with MPD server
 - [zeptojs](http://zeptojs.com) - lightweight, jquery alternative designed for mobile browsers
 - [jQTouch](http://www.jqtouch.com) - javascript library for building iOS-like user interface of web application


Features
------------

Currently only Play, Pause, Stop, Next, Previous buttons are available. But there will be more...


Setup
------------

First of all, you need ruby. Can be found in most distro's repositories, but I strongly recommend installing it using [RVM](https://rvm.io).

If you have bundler installed you may simple type:

    bundle

and every needed gem will be installed. If not, you can install bundler

    gem install bundler

and do the above or install gems manually

    gem install sinatra librmpd coffee-script thin

Default configuration assumes that you are running sin-mpd on the same machine that your mpd server is running. If it's not
the case, you can set your mpd server address and port number in config/mpd.yml file.


Coffee Script
------------

All my javascripts will be written in coffeescript, as I think it's the way javascript should ever be written :)
There is no problem however if you don't want to use it. You have to compile coffee files yourself and put them in
public/javascripts directory

Running
------------

Inside application directory simply run

    $ ruby sin-mpd.rb
    == Sinatra/1.3.3 has taken the stage on 4567 for development with backup from Thin
    >> Thin web server (v1.5.0 codename Knife)
    >> Maximum connections set to 1024
    >> Listening on 0.0.0.0:4567, CTRL+C to stop

If you have local wireless network configured, on your iPhone or any mobile device connected to it, type IP address of your
machine with port seen above (it's sinatra's default, can be changed), for example http://192.168.1.100:4567.
You should see application interface.


That's all for now. It's likely that I missed many important details. I'll probably keep updating this file in the future versions.