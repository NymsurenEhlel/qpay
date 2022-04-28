import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Qpay extends StatelessWidget {
  const Qpay({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new RaisedButton(onPressed:
          _launchURL,
        child: new Text('Төлбөр төлөлт'),
        ),
      ),
    );
  }
}
_launchURL() async {
  const url = 'https://qpay.mn/q/?q=0002010102121531279404962794049600022410095383152045999530349654031005802MN5911EKHLELBREND6011Ulaanbaatar62570106ID21320518Invoicedescription0721gjxhua1XLqOmUJuzxcZF_6304EE57';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}