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
	<div class="col-md-12">
		<section id="customize">
		<div class="page-header">
			<h2>Customizing your Application</h2>
        </div>
		<p>
            You can now start editing your application and building great ColdBox enabled apps. Important files & locations:
        </p>
		<ol>
		    <li>
		        <code>/config/ColdBox.cfc</code>: Your application configuration file
		    </li>
			<li>
		        <code>/config/Routes.cfm</code>: Your URL Mappings
		    </li>
		    <li>
		        <code>/config/WireBox.cfc</code>: Your WireBox Binder
		    </li>
		    <li>
		        <code>/handlers</code>: Your application event handlers
		    </li>
		    <li>
		        <code>/interceptors</code>: System interceptors
		    </li>
			<li>
		        <code>/includes</code>: Assets, Helpers, i18n, templates and more.
		    </li>
			<li>
		        <code>/layouts</code>:Your application skin layouts
		    </li>
		    <li>
		        <code>/lib</code>: Where Jar files can be integrated
		    </li>
			<li>
		        <code>/models</code>: Your model layer
		    </li>
			<li>
		        <code>/modules</code>: Your application modules
		    </li>
			<li>
		        <code>/tests</code>: Your BDD testing harness (Just DO IT!!)
		    </li>
			<li>
		        <code>/views</code>: Your application views
		    </li>
		</ol>
		</section>
	</div>
</div>
</cfoutput>