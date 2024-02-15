import 'package:firstapp/contactapp/contatcsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
class ContactScreen extends StatefulWidget {
  static const routname = 'ContactScreen';

  ContactScreen({super.key});


  @override
  State<ContactScreen> createState() => _ContactScreenState();
}



class _ContactScreenState extends State<ContactScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  List<ContactsModel> contacts = [];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          "Contact Screen",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
        if (value == null || value.isEmpty) {
        return 'Please enter your name';
        }
        return null;
        },
                keyboardType: TextInputType.text,
                controller: nameController,
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "Enter Your Name Here",
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                controller: phoneController,
                decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "Enter Your Phone Here",
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 16),
           Container(
             width: double.infinity,
             margin:EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: addcontacts,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text("Add",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ),
              for(int i=0;i<contacts.length;i++)
                Visibility(
                  visible: contacts.length>0,
                    child:Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Text('Name: ${contacts[i].name}\nPhone: ${contacts[i].phone}',style: TextStyle(fontSize: 18)),
                            Spacer(),
                            IconButton(onPressed: (){
                              deletecontact(i);
                            }, icon: Icon(Icons.delete,color: Colors.red,))
                          ],
                        ),),
                      ),
                      ),
            ],
          ),
        ),
      ),
    );
  }

  void addcontacts() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        if (nameController.text.isNotEmpty &&
            phoneController.text.isNotEmpty &&
            contacts.length < 3) {
          contacts.add(ContactsModel(
            name: nameController.text,
            phone: phoneController.text,
          ));
          nameController.clear();
          phoneController.clear();
        }
      });
    }
  }

  void deletecontact(int index) {
    setState(() {
      contacts.removeAt(index);
    });
  }
}
