import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'custom_widgets/pix_icon_icons.dart';
import 'models/card_item_model.dart';

final List<CardItemModel> topMenuItems = <CardItemModel>[
  CardItemModel(
    description: 'Transferência',
    iconData: Feather.repeat,
  ),
  CardItemModel(
    description: 'Pix',
    iconData: PixIcon.pix,
  ),
  CardItemModel(
    description: 'Investimentos',
    iconData: Entypo.bar_graph,
  ),
];

final List<CardItemModel> allMenuItems = <CardItemModel>[
  CardItemModel(
    description: 'Cartões',
    iconData: EvilIcons.credit_card,
  ),
  CardItemModel(
    description: 'Gift Card',
    iconData: AntDesign.gift,
  ),
  CardItemModel(
    description: 'Pagamentos',
    iconData: FontAwesome.barcode,
  ),
  CardItemModel(
    description: 'Seguros',
    iconData: Feather.umbrella,
  ),
  CardItemModel(
    description: 'Depósito por boleto',
    iconData: FontAwesome.money,
  ),
  CardItemModel(
    description: 'Depósito por cheque',
    iconData: FontAwesome.money,
  ),
  CardItemModel(
    description: 'Conta MEI',
    iconData: FontAwesome.user_plus,
  ),
  CardItemModel(
    description: 'Agendamentos',
    iconData: Feather.calendar,
  ),
  CardItemModel(
    description: 'Portabilidade de salário',
    iconData: FontAwesome.money,
  ),
  CardItemModel(
    description: 'Empréstimo',
    iconData: FontAwesome.money,
  ),
  CardItemModel(
    description: 'Finaciamento Imobiliário',
    iconData: FontAwesome.home,
  ),
  CardItemModel(
    description: 'Débito Automático',
    iconData: Feather.calendar,
  ),
  CardItemModel(
    description: 'Consórcio',
    iconData: AntDesign.key,
  ),
  CardItemModel(
    description: 'Câmbio',
    iconData: FontAwesome.exchange,
  ),
  CardItemModel(
    description: 'Recarga',
    iconData: Ionicons.ios_redo,
  ),
  CardItemModel(
    description: 'Interpag',
    iconData: FontAwesome.qrcode,
  ),
  CardItemModel(
    description: 'Intercel',
    iconData: AntDesign.mobile1,
  ),
  CardItemModel(
    description: 'Cashback',
    iconData: MaterialCommunityIcons.cash_refund,
  ),
];
