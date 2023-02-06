import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchData extends StatelessWidget {
  const FetchData({super.key});

  final String apiUrl =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  Future<List<dynamic>> _fetchDataPokemons() async {
    var result = await http.get(Uri.parse(apiUrl));
    print(jsonDecode(result.body));
    return jsonDecode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pokemon List App',
        ),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _fetchDataPokemons(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(snapshot.data![index]['id'].toString()),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
