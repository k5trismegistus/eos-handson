# EOSを動かしてみよう勉強会 #2

```
$: ホスト
>: コンテナ内
```

でのコマンド実行を表します。

## セットアップ

```bash
$ docker-compose build
```

## 動かし方

```bash
$ docker-compose run --rm bash

# nodeosが起動していることを確認
> cleos -u http://nodeos:8888 get info
```

### ローカル開発

以下をエイリアスしておくと便利です。

```bash
> alias cleos="cleos -u http://nodeos:8888"
```

## テストネット開発

以下をエイリアスしておくと便利です。

```bash
> alias cleos="cleos -u https://api-kylin.eosasia.one"
```
