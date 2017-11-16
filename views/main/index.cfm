<cfoutput>
<div class="jumbotron">
	<div class="row">
		<div class="col-md-12 text-center">
			<h1>Coding Exercise</h1>
			<h2>Log in and Log out</h2>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-4 offset-md-4">
        <section id="login-section">
		<div class="form-group">
			<label for="emailAddress">Email address</label>
			<input type="email" class="form-control login-fields" id="emailAddress" placeholder="Enter email">
		</div>
		<div class="form-group">
			<label for="password">Password</label>
			<input type="password" class="form-control login-fields" id="password" placeholder="Password">
            <input type="hidden" name="token" id="token" value="#CSRFGenerateToken()#" />
		</div>
		<div class="form-group">
            <button id="login-btn" class="btn btn-lg btn-primary" disabled="disabled">Log In</button>
		</div>
        </section>

        <section id="logout-section">
		<div class="page-header">
			<h2>You are in.</h2>
        </div>
		<div class="form-group">
            <button id="logout-btn" class="btn btn-lg btn-danger">Log Out</button>
		</div>
        </section>

        <section id="login-error">
		<div class="page-header">
			<h2>User Not Found.</h2>
        </div>
        </section>
	</div>
</div>
</cfoutput>