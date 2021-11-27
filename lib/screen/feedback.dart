import 'package:flutter/material.dart';
import 'package:flutter_jugaadhai_tak_ankitpaswan/service/httpservice.dart';
import 'package:flutter_jugaadhai_tak_ankitpaswan/widget/Bottom_Nav.dart';

class FeedbackForm extends StatefulWidget {
  FeedbackForm({Key? key}) : super(key: key);

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  bool isChecked = false;

  bool posted = false;

  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback Form"),
      ),
      body: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Name";
                    } else
                      return null;
                  },
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                    labelText: "Name",
                  ),
                ),
                TextFormField(
                  controller: feedbackController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Feedback";
                    } else
                      return null;
                  },
                  style: TextStyle(fontSize: 25),
                  decoration: InputDecoration(
                    labelText: "Feedback",
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Text('Will refer'),
                      Checkbox(
                          value: isChecked,
                          activeColor: Colors.green,
                          onChanged: (currentValue) {
                            setState(() {
                              isChecked = currentValue!;
                            });
                          }),
                    ],
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Map<String, dynamic> feedbackForm = {
                        "Name": nameController.text,
                        "Feeback": feedbackController.text,
                        "WillRefer": isChecked
                      };
                      postFeedback(feedbackForm: feedbackForm)
                          .then((value) => setState(() {
                                posted = true;
                              }));
                    }
                  },
                  child: Text(
                    "Send",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                (posted)
                    ? Container(
                        child: Text("Successfully posted",
                            style:
                                TextStyle(fontSize: 18, color: Colors.green)))
                    : Container()
              ],
            ),
          )),
      bottomNavigationBar: BottomNav(),
    );
  }
}
