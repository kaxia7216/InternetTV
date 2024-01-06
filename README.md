今回は、インターネットTVを作成しました。  

環境構築には、下記のファイルを使用します。  
本リポジトリからクローンして、任意のフォルダに置いてください。  
・[CREATE_TABLES.sql](https://github.com/kaxia7216/InternetTV/blob/master/CREATE_TABLES.sql)  
・[INSERT_SAMPLE.sql](https://github.com/kaxia7216/InternetTV/blob/master/INSERT_SAMPLE.sql)  

 

まずMySQLにログインしましょう。

```
mysql -u root -p
```

続けてパスワードを入力して、ログインしてください。


## 1. データベース構築
続けて、データベースを構築します。
以下のコマンドを実行してください。
```
CREATE DATABASE internet_tv;
```
これで、データベースを作成できました。  
次に、テーブルを作成します。以下のコマンドを実行してください。
``` 
source /(任意のファイルパス)/CREATE_TABLES.sql;
```

続けて、先ほど作成したテーブルにサンプルデータを挿入します。
``` 
source /(任意のファイルパス)/INSERT_SAMPLE.sql;
```
これで、データベース構築は完了しました。  

## 2. データ抽出クエリ
データ抽出用のクエリ群です。  
[こちら](URL)のファイルから適宜必要なクエリを使用してください。

> [!IMPORTANT]  
挿入されているデータによっては、クエリが正しくても抽出できるデータがない場合がございますのでご注意ください。  

