package src.classes;

typedef Authentication = {
    user:String,
    password:String,
    capabilities:Capabilities
}

typedef Capabilities = {
    browserName:Null<String>,
    browserVersion:Null<String>,
    platformName:Null<String>,
    acceptInsecureCerts:Null<Bool>,
    pageLoadStrategy:Null<String>,
    proxy:Null<Proxy>,
    setWindowRect:Null<Bool>,
    timeouts:Null<Timeouts>,
    strictFileInteractibility:Null<Bool>,
    unhandledPromptBehavior:Null<String>
}

typedef Proxy = {
    proxyType:String,
    proxyAutoconfigUrl:String,
    ftpProxy:String,
    httpProxy:String,
    noProxy:Array<String>,
    sslProxy:String,
    socksProxy:String,
    socksVersion:Int
}

typedef Timeouts = {
    script:Null<Int>,
    pageLoad:Null<Int>,
    implicit:Null<Int>
}