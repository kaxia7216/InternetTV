今回は、インターネットTVを作成しました。  

## ER図
作成したデータベースのER図です。
![ER図](https://www.plantuml.com/plantuml/png/7Cb13W8X30NGVK_nuyPhU1M4Aer0IVjrChVNk7nvjsG9lkUGAxer1RiYjrF-gXPrgFooVDmQTlXzw4mSnewodaCRQlYHUAXIycLhboWJmvRot0eFTXVHHUE9oxUESbbf68Z2yBvFCRWKMcnhwwO45oA8u3iK6joreEwQGZAZWeI2O19nBTu52ssnrClBZBdaBPp9J3Z9aDaK_lCVlldFEQ6KE9JSKpAdP4h9smRgdo9pgud6DOGs5VDW3_Lwn-RGFEcVcGF3O2trEljHsiBhQMq2ByJ-Qxmyb-2M08jQDO_Qjh0P1qJoCeyNCwuZxpUrdUWEfy5DkFh88Fk7Xi6zYi3WuLNkWL4CIl4p9Hx5FvHyKt8b4xT5OiNKHbVwv0nADV9d5TMZaIX-SedNBAceA6smYT3rO-zBR2BJ5-zfu4Qt3x0spQ2m2JdbjfmI7FsreKSzTJ6x17ToC3XwCFIm3HN1oiqbkolOYgaz3TjD-EJ2kk8b_bjVIbruB7aC4cV14iXdTh9dj9yMGig1YfPaoMdOnsHPZSPepAbCDZDfvRA59YCcBNwFikoKPPTBGBNBg5PjrnmEs7_8Fm00)


## 1. データベース構築
環境構築には、下記のファイルを使用します。  
本リポジトリからクローンして、任意のフォルダに置いてください。  
・[CREATE_TABLES.sql](https://github.com/kaxia7216/InternetTV/blob/master/CREATE_TABLES.sql)  
・[INSERT_SAMPLE.sql](https://github.com/kaxia7216/InternetTV/blob/master/INSERT_SAMPLE.sql)  

 

まずMySQLにログインしましょう。

```
mysql -u root -p
```

パスワードを入力して、ログインしてください。

続けて、データベースを構築します。
以下のコマンドを実行してください。
```
CREATE DATABASE internet_tv;
USE internet_tv;
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
[こちら](https://github.com/kaxia7216/InternetTV/blob/master/SQL_QUERY.sql)のファイルから適宜必要なクエリを使用してください。

> [!IMPORTANT]  
挿入されているデータ(特に日付)によっては、クエリが正しくても抽出できるデータがない場合がございますのでご注意ください。  

