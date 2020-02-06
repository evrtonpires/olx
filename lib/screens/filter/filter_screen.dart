import 'package:flutter/material.dart';
import 'package:xlo/models/filter.dart';
import 'package:xlo/screens/filter/widgets/animated_button.dart';
import 'package:xlo/screens/filter/widgets/order_by_filter.dart';
import 'package:xlo/screens/filter/widgets/price_range_field.dart';
import 'package:xlo/screens/filter/widgets/section_title.dart';
import 'package:xlo/screens/filter/widgets/vendor_type_field.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();

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
              controller: _scrollController,
              padding: EdgeInsets.all(16),
              children: <Widget>[
                const Center(child: SectionTitle(title: "Ordenar Por")),
                OrderByFilter(initialValue: OrderBy.DATE, onSaved: (valor) {}),
                const Center(child: SectionTitle(title: "Preço (R\$)")),
                PriceRangeField(),
                const Center(child: SectionTitle(title: "Tipo de Anunciante")),
                VendorTypeField(
                  initialValue: VENDOR_TYPE_PARTICULAR | VENDOR_TYPE_PROFISSIONAL,
                  onSaved: (valor) {},),
                SizedBox(height: 500),
              ],
            ),
          ),

          AnimatedButton(scrollController: _scrollController, onTap: () {})
        ],
      ),
    );
  }
}
