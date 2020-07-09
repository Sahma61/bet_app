import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Icon(Icons.account_circle, size: 88.0, color: Colors.white),
            preferredSize: Size.fromHeight(40.0)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            StreamBuilder(
              stream: null,
              builder: (BuildContext context, AsyncSnapshot snapshot) =>
                  TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email Address',
                    icon: Icon(Icons.mail_outline),
                    errorText: snapshot.error),
                onChanged: null,
              ),
            ),
            StreamBuilder(
              stream: null,
              builder: (BuildContext context, AsyncSnapshot snapshot) =>
                  TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.security),
                    errorText: snapshot.error),
                onChanged: null,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            _buildLoginAndCreateButtons()
          ],
        ),
      )),
    );
  }

  Widget _buildLoginAndCreateButtons() {
    return StreamBuilder(
      initialData: 'Login',
      stream: null,
      builder: ((BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == 'Login')
          return _buttonsLogin();
        else if (snapshot.data == 'Create Account')
          return _buttonsCreateAccount();
      }),
    );
  }
}

Column _buttonsCreateAccount() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      StreamBuilder(
        initialData: false,
        builder: (BuildContext context, AsyncSnapshot snapshot) => RaisedButton(
          elevation: 16.0,
          onPressed: () {},
          child: Text('Create Account'),
          color: Colors.lightGreen.shade200,
          disabledColor: Colors.grey.shade100,
        ),
      ),
      FlatButton(
        onPressed: () {},
        child: Text('Login'),
      )
    ],
  );
}

Column _buttonsLogin() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      StreamBuilder(
        initialData: false,
        builder: (BuildContext context, AsyncSnapshot snapshot) => RaisedButton(
          elevation: 16.0,
          onPressed: () {},
          child: Text('Login'),
          color: Colors.lightGreen.shade200,
          disabledColor: Colors.grey.shade100,
        ),
      ),
      FlatButton(
        onPressed: () {},
        child: Text('Create Account'),
      )
    ],
  );
}
