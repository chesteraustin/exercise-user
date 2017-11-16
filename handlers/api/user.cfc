/**
* I am a new handler
*/
component{
	// OPTIONAL HANDLER PROPERTIES
	this.prehandler_only 	= "";
	this.prehandler_except 	= "";
	this.posthandler_only 	= "";
	this.posthandler_except = "";
	this.aroundHandler_only = "";
	this.aroundHandler_except = "";
	// REST Allowed HTTP Methods Ex: this.allowedMethods = {delete='POST,DELETE',index='GET'}
	this.allowedMethods = {};
	
	/**
	IMPLICIT FUNCTIONS: Uncomment to use
	function preHandler( event, rc, prc, action, eventArguments ){
	}
	function postHandler( event, rc, prc, action, eventArguments ){
	}
	function aroundHandler( event, rc, prc, targetAction, eventArguments ){
		// executed targeted action
		arguments.targetAction( event );
	}
	function onMissingAction( event, rc, prc, missingAction, eventArguments ){
	}
	function onError( event, rc, prc, faultAction, exception, eventArguments ){
	}
	function onInvalidHTTPMethod( event, rc, prc, faultAction, eventArguments ){
	}
	*/
		
	/**
	* login
	*/
	function login( event, rc, prc ){
		//check credentails against db
		var userQuery = QueryNew("username,password");
		QueryAddRow(userQuery, [
			{username="test@email.com", password="asdf"}
		]);
		var credentials = event.getHTTPBasicCredentials();
		var queryOptions = {dbType="query"}
		var checkUser = queryExecute("SELECT username, password FROM userQuery WHERE username = :username and password = :password", {username: credentials.username, password: credentials.password}, queryOptions)

		if (checkUser.recordcount eq 1 ) {
			event.renderData( type="JSON", data=[checkUser] );
		}
		else {
			event.renderData( type="JSON", data={}, statusCode=401, statusMessage="User not found");
		}
	}

	/**
	* logout
	*/
	function logout( event, rc, prc ){
//		event.setView( "api/user/logout" );
		event.renderData( type="JSON", data="logout" );
	}

	/**
	* check
	*/
	function check( event, rc, prc ){
		//check credentails against db
		var userQuery = QueryNew("username,password");
		QueryAddRow(userQuery, [
			{username="test@email.com", password="asdf"}
		]);
		var credentials = event.getHTTPBasicCredentials();
		var queryOptions = {dbType="query"}
		var checkUser = queryExecute("SELECT username, password FROM userQuery WHERE username = :username and password = :password", {username: credentials.username, password: credentials.password}, queryOptions)

		event.renderData( type="JSON", data=[checkUser] );
	}
}
