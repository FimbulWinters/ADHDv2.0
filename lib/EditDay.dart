import 'package:adhd_app/Providers/FormProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditDay extends StatefulWidget {
  const EditDay({Key? key}) : super(key: key);

  @override
  State<EditDay> createState() => _EditDayState();
}

class _EditDayState extends State<EditDay> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Your day'),
        backgroundColor: Colors.grey[850],
        elevation: 10,
      ),
      body: ChangeNotifierProvider(
        create: (_) => EditDayFormProvider(),
        child: Form(
          key: _formKey,
          child: Consumer<EditDayFormProvider>(
            builder: (context, EditDay, child) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40.0),
                const Text('Here you can adjust a specific activity for your day'),
                const SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Activity name'),
                        ],
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a name';
                          }
                          return null;
                        },
                        onChanged: (value) => EditDay.updateActivityName(value),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Activity type'),
                        ],
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a type';
                          }
                          return null;
                        },
                        onChanged: (value) => EditDay.updateActivityType(value),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Duration'),
                        ],
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a duration';
                          }
                          return null;
                        },
                        onChanged: (value) => EditDay.updateDuration(value),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50.0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
