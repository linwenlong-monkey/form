import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('form表单事例'),
        ),
        //添加表单控件
        body: new Column(
          children: <Widget>[
            Container(
              // padding: EdgeInsets.all(18),
              margin: EdgeInsets.all(18),

              child: Form(
                  child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: '请输入用户名:'),
                    onSaved: (value) {
                      print('onSaved value is $value');
                    },
                    onChanged: (value) {
                      print('onChanged value is $value');
                    },
                    onFieldSubmitted: (value) {
                      print('onFieldSubmitted value is $value');
                    },
                  ),
                  TextFormField(
                    decoration: new InputDecoration(labelText: '请输入密码：'),
                    onSaved: (value) {},
                    //验证表单是否正确
                    validator: (value) {
                      return value.length < 6 ? '密码不能少于6位' : null;
                    },
                  )
                ],
              )),
            ),
            SizedBox(
              width: 340.0,
              height: 42.0,
              child: new RaisedButton(
                onPressed: null,
                child: Text('登录'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
