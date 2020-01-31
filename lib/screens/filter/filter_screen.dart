import 'package:flutter/material.dart';
import 'package:xlo/models/filter.dart';
import 'package:xlo/screens/filter/widgets/order_by_filter.dart';
import 'package:xlo/screens/filter/widgets/price_range_field.dart';
import 'package:xlo/screens/filter/widgets/section_title.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Filtrar Busca"),
      ),
      body: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: <Widget>[
                const Center(child: SectionTitle(title: "Ordenar Por")),
                OrderByFilter(initialValue: OrderBy.DATE, onSaved: (valor) {}),
                const Center(child: SectionTitle(title: "Preço (R\$)")),
                PriceRangeField(),
                const Center(child: SectionTitle(title: "Tipo de Anunciante")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
