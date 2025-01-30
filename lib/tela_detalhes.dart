import 'package:flutter/material.dart';

class TelaDetalhes extends StatelessWidget {
  final Map<String, dynamic> dadosClima;

  TelaDetalhes({required this.dadosClima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Clima'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Cidade: ${dadosClima['name']}',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Condição: ${dadosClima['weather'][0]['description']}',
                        style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.thermostat, color: Colors.red),
                        title: Text('Temperatura'),
                        subtitle: Text('${dadosClima['main']['temp']}°C'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.opacity, color: Colors.blue),
                        title: Text('Umidade'),
                        subtitle: Text('${dadosClima['main']['humidity']}%'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.speed, color: Colors.green),
                        title: Text('Pressão'),
                        subtitle: Text('${dadosClima['main']['pressure']} hPa'),
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.air, color: Colors.orange),
                        title: Text('Vento'),
                        subtitle: Text('${(dadosClima['wind']['speed'] * 3.6).toStringAsFixed(2)} km/h'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}