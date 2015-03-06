mj-mysql Cookbook
======================

mysql cookbookを利用しての、mysqlのセットアップの実行対応

recipe['mj-mysql::server'] を実行
root パスワードを data_bags で暗号化
によるインストールを行う。

data_bags では

data_bags/mysql/root.json について

```json
{
  "id":       "root"
  "password": "password"
}
```

を data_bag_key を利用して暗号化して作成する。
事で利用する。
