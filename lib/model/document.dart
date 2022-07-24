class DocumentPDF {
  late String docTitle;
  late String docUrl;
  late String docDate;
  late int docNum;

  DocumentPDF({
    required this.docTitle,
    required this.docUrl,
    required this.docDate,
    required this.docNum,
  });

  static List<DocumentPDF> docList = [
    DocumentPDF(
        docTitle: '"THE IMPACT OF ARTIFICIAL INTELLIGENCE ON INNOVATION",',
        docUrl:
            "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf",
        docDate: '28-032018',
        docNum: 48),
    DocumentPDF(
        docTitle: '"THE IMPACT OF ARTIFICIAL INTELLIGENCE ON INNOVATION",',
        docUrl:
            "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf",
        docDate: '28-032018',
        docNum: 48),
    DocumentPDF(
        docTitle: '"THE IMPACT OF ARTIFICIAL INTELLIGENCE ON INNOVATION",',
        docUrl:
            "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf",
        docDate: '28-032018',
        docNum: 48),
  ];
}
