package src.classes;

import haxe.io.Error;

interface Session {
    public var sessionID(default, null):String;
    
    public function newSession(url:String):Session;
    public function end(sessionID:String):Null<Error>;
    public function status(?sessionID:String):Null<Error>;
}