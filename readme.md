# exercise-user

This is a login page exercise using the following items:

1. ColdFusion application
2. ColdBox framework
3. Bootstrap CSS framework
4. jQuery

## Workflow
The user is originally presented with a blank login form.  They can enter their email and password.  The submit button is initially disabled.  Once the user enters values in both fields, the `Log In` button will become enabled.  Once the user clicks on the button, an AJAX call is submitted to the route `api/user`.  If the login fails, they are presented with a `User Not Found.` message.

If the user uses the following credentials: `test@email.com` and `asdf`, the AJAX call will pass authentication and they will be presented with a `You are in.` message as well as a `Log Out` button.  The `Log Out` button will direct the user back to the original login form.
