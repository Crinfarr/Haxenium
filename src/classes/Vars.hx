package src.classes;

var errorCodes(default, null):Any = {
	elementClickIntercepted: ["400", "element click intercepted"],
	elementNotInteractable: ["400", "element not interactable"],
	insecureCertificate: ["400", "insecure certificate"],
	invalidArgument: ["400", "invalid argument"],
	invalidCookieDomain: ["400", "invalid cookie domain"],
	invalidElementState: ["400", "invalid element state"],
	invalidSelector: ["400", "invalid selector"],
	invalidSessionID: ["404", "invalid session ID"],
	javascriptError: ["500", "javascript error"],
	moveTargetOutOfBounds: ["500", "move target out of bounds"],
	noSuchAlert: ["404", "no such alert"],
	noSuchCookie: ["404", "no such cookie"],
	noSuchElement: ["404", "no such element"],
	noSuchFrame: ["404", "no such frame"],
	noSuchWindow: ["404", "no such window"],
	noSuchShadowRoot: ["404", "no such shadow root"],
	scriptTimeoutError: ["500", "script timeout"],
	sessionNotCreated: ["500", "session not created"],
	staleElementReference: ["404", "staleElementReference"],
	detachedShadowRoot: ["404", "detachedShadowRoot"],
	timeout: ["500", "timeout"],
	unableToSetCookie: ["500", "unable to set cookie"],
	unableToCaptureScreen: ["500", "unable to capture screen"],
	unexpectedAlertOpen: ["500", "unexpected alert open"],
	unknownCommand: ["404", "unknown command"],
	unknownError: ["500", "unknown error"],
	unknownMethod: ["405", "unknown method"],
	unsupportedOperation: ["500", "unsupported operation"]
}

enum RequestType {
	newSession;
	deleteSession;
	status;
	getTimeouts;
	setTimeouts;
    navigateTo;
    getCurrentURL;
    back;
    forward;
    refresh;
    getTitle;
}

enum HTTPMethod {
	GET;
	POST;
	DELETE;
}

var endpoints(default, null):Map<RequestType, (Null<String>) -> Array<Any>> = [
	newSession => function(_):Array<Any> return [POST, '/session'],
	deleteSession => function(sessionID:String):Array<Any> return [DELETE, '/session/$sessionID'],
	status => function(_):Array<Any> return [GET, '/status'],
	getTimeouts => function(sessionID:String) return [GET, '/session/$sessionID/timeouts'],
	setTimeouts => function(sessionID:String) return [POST, '/session/$sessionID/timeouts'],
    navigateTo => function(sessionID:String) return [POST, '/session/$sessionID/url'],
    getCurrentURL => function (sessionID:String) return [GET, '/session/$sessionID/url'],
    back => function(sessionID:String) return [POST, '/session/$sessionID/back'],
    forward => function(sessionID:String) return [POST, '/session/$sessionID/forward'],
    refresh => function(sessionID:String) return [POST, '/session/$sessionID/refresh']
];
