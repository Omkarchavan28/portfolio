import 'package:flutter/material.dart';
import 'package:portfolio_app/presentation/constants.dart';
import 'package:portfolio_app/presentation/hover_effect.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
//   final Email email = Email(
//   body: '',
//   subject: 'Contact Form',
//   recipients: [],
//   cc: ['cc@example.com'],
//   isHTML: false,
// );
  //text feild state
  String name = '';
  String email = '';
  String error = '';
  String message = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 380,
        maxWidth: 600,
      ),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: textInputDecoration.copyWith(
                    hintText: 'Your Full Name', labelText: 'Name'),
                validator: (val) =>
                    val.isEmpty || val.length <= 5 ? 'Name Required' : null,
                onChanged: (val) {
                  setState(() => name = val);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: textInputDecoration.copyWith(
                    hintText: 'yourmail@example.com', labelText: 'Email'),
                validator: (val) => val.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(val)
                    ? 'Email Required'
                    : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                maxLines: 5,
                decoration: textInputDecoration.copyWith(
                    hintText: 'Type Here', labelText: 'Message'),
                validator: (val) => val.isEmpty
                    ? "Message Can't Be Empty"
                    : val.length <= 10
                        ? "Message Can't Be Less Than 10 Characters"
                        : null,
                onChanged: (val) {
                  setState(() => message = val);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 40,
                width: 130,
                child: OutlineButton(
                  hoverColor: Colors.amber,
                  borderSide: BorderSide(
                    width: 2.0,
                    color: Colors.amber,
                  ),
                  shape: StadiumBorder(),
                  child: Text("Send"),
                  color: Colors.amber,
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      print('object');
                      setState(() {
                        print('done');
                      });
                    }
                  },
                  padding: EdgeInsets.all(10),
                ).showCursorOnHover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
