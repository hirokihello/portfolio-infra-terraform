#### what this is?
A. terraform of my portfolio site's infra

terraformを使用したポートフォリオ用のインフラ設定ファイルです。

route53+s3+cloudfrontの設定になっています。

circleCIでデプロイを想定しています。

使用する際環境変数の設定+iamの権限の付与を適切にする必要があります。

my portfolio → https://hirokihello.xyz
my portfolio(github) → https://github.com/hirokihello/portfolio
#### content

ci/config file
tf files(s3/cloudfront/route53/acm)

#### build

```
brew install terraform
terraform apply
```
