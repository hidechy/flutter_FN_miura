class Environment {
  Environment._();

  // TODO(miura): リリースビルドの場合は向き先を本番に切り替えられるように
  static String get apiEndPoint => '54.168.147.43';
  static String get apiBasePath => 'family_notes/public/api';
}
