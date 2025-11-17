import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart' as cs;

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  List<cs.Contact> contacts = [];

  @override
  void initState() {
    super.initState();
    checkPermission();
  }

  Future<bool> getContactPermission() async {
    PermissionStatus status = await Permission.contacts.status;

    if (status.isGranted) return true;

    status = await Permission.contacts.request();

    if (status.isGranted) return true;

    if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    }

    return false;
  }

  void checkPermission() async {
    bool allowed = await getContactPermission();
    if (allowed) {
      loadContacts();
    }
  }

  Future<void> loadContacts() async {
    Iterable<cs.Contact> deviceContacts = await cs.ContactsService.getContacts();
    setState(() {
      contacts = deviceContacts.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          cs.Contact c = contacts[index];
          return ListTile(
            title: Text(c.displayName ?? "No Name"),
            subtitle:Text(c.phones.toString()),
          );
        },
      ),
    );
  }
}
