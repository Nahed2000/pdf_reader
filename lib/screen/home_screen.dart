import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf_reader/screen/pdf_reader.dart';

import '../model/document.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('PDF Reader'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: Text(
                    'Recent Documents',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Column(
                  children: DocumentPDF.docList
                      .map(
                        (doc) => ListTile(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PDFReader(doc:doc),
                              )),
                          leading: const Icon(
                            Icons.picture_as_pdf_outlined,
                            color: Colors.redAccent,
                            size: 38,
                          ),
                          title: Text(
                            doc.docTitle,
                            style: GoogleFonts.nunito(),
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text('${doc.docNum} Page'),
                          trailing: Text(
                            doc.docDate,
                            style: GoogleFonts.nunito(color: Colors.grey),
                          ),
                        ),
                      )
                      .toList(),
                )
              ]),
        ),
      ),
    );
  }
}
