import 'package:adv_exam/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/countries_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<HomeProvider>(context, listen: false).callingApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<CountriesModel>? apiList = snapshot.data;
            return ListView.builder(
              itemCount: apiList!.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      apiList[index].flags!.png.toString(),
                    ),
                  ),
                  title: Text(
                    apiList[index].name!.common.toString(),
                  ),
                  subtitle: (apiList[index].capital![0] != null)
                      ? Text(apiList[index].capital![0].toString())
                      : const Text('not'),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/details');
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
