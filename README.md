# sap-production-order-confirmation-sql

sap-production-order-confirmation-sql は、主にエッジアプリケーションにおいて、SAPと連携された作業記録票データを保存するSQLテーブルを作成するためのレポジトリです。  
sap-production-order-confirmation-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-production-order-confirmation-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。  
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_PROD_ORDER_CONFIRMATIO_2_SRV_0001/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル

sap-production-order-confirmation-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* sap-production-order-confirmation-sql-confirmation-data.sql（SAP 作業記録票 - 確認データ）  
* sap-production-order-confirmation-sql-material-movements-data.sql（SAP 作業記録票 - 入出庫データ）  
* sap-production-order-confirmation-sql-batch-characteristic-data.sql（SAP 作業記録票 - ロット特性データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  