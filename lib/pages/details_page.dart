import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map rates;
  final Function(String) onCurrencySelected;

  const DetailsPage({required this.rates, required this.onCurrencySelected});

  @override
  Widget build(BuildContext context) {
    List _curencies = rates.keys.toList();
    List _exchangeRates = rates.values.toList();
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: _curencies.length,
            itemBuilder: (_context, _index) {
              String _currency = _curencies[_index].toString().toUpperCase();
              String _exchangeRate = _exchangeRates[_index].toString();
              return ListTile(
                title: Text(
                  '$_currency: $_exchangeRate',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){
                  Navigator.pop(context, _currency);
                },
              );
            }),
      ),
    );
  }
}
