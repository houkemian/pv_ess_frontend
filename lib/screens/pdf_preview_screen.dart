import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'dart:typed_data';

class PdfPreviewScreen extends StatelessWidget {
  final Uint8List pdfBytes;

  const PdfPreviewScreen({super.key, required this.pdfBytes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proposal Preview', style: TextStyle(fontSize: 16)),
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
      ),
      // 🌟 核心：自带缩放、打印、分享功能的专业预览器！
      body: PdfPreview(
        build: (format) => pdfBytes,
        allowSharing: true, // 允许分享
        allowPrinting: true, // 允许打印
        canChangeOrientation: false,
        canChangePageFormat: false,
        pdfFileName: 'PV_ESS_Proposal_${DateTime.now().millisecondsSinceEpoch}.pdf',
      ),
    );
  }
}