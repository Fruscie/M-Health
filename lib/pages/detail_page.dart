import 'package:flutter/material.dart';
import 'package:mhealth/theme.dart';
import 'package:mhealth/widget/detail_data.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: const [
          DetailData(
            title: 'Nama Puskesmas',
            subTitle: 'PULO MERAK',
          ),
          DetailData(
            title: 'Jumlah KK',
            subTitle: '8868.00',
          ),
          DetailData(
            title: 'Jumlah KK Pra-Sehat',
            subTitle: '6212.00',
          ),
          DetailData(
            title: 'Jumlah KK Tidak Sehat',
            subTitle: '1322.00',
          ),
          DetailData(
            title: 'Jumlah KK Sehat',
            subTitle: '1334.00',
          ),
          DetailData(
            title: 'IKS Inti',
            subTitle: '0.15',
          ),
          DetailData(
            title: 'Prosentase Indikator',
            subTitle: '52.06',
          ),
          DetailData(
            title: 'Jumlah Y',
            subTitle: '4617.00',
          ),
          DetailData(
            title: 'Jumlah T',
            subTitle: '4251.00',
          ),
          DetailData(
            title: 'Jumlah N',
            subTitle: '0.00',
          ),
        ],
      ),
    );
  }
}
