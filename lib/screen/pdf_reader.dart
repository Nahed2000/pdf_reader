import 'package:flutter/material.dart';
import 'package:pdf_reader/model/document.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFReader extends StatefulWidget {
  const PDFReader({
    Key? key,
    required this.doc,
  }) : super(key: key);
  final DocumentPDF doc;

  @override
  State<PDFReader> createState() => _PDFReaderState();
}

class _PDFReaderState extends State<PDFReader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(widget.doc.docTitle),
        
      ),
      body: Container(
        child: SfPdfViewer.network(widget.doc.docUrl,),
      ),
    );
  }
}
