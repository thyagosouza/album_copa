import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/config/env/env.dart';

import 'app/services/fwc_album_app.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(FwcAlbumApp());
}
