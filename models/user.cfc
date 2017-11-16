component {
	function users() {
		var userQuery = QueryNew("username,password");
		QueryAddRow(userQuery, [
			{username="test@email.com", password="asdf"}
		]);
		return userQuery;
	}
}