import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:shimmer_effect/model/invoice_model.dart';
import 'package:shimmer_effect/screens/pdf/pdfExport.dart';

class PdfPreviewPage extends StatelessWidget {
  const PdfPreviewPage({super.key, required this.invoice});
  final Invoice invoice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PDF Preview"),
        ),
        body: PdfPreview(
          build: (context) => makePdf(invoice),
        ));
  }
}
