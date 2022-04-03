# Next.js×TypeScript×Laravel 構成

## 使用技術

| skill      | varsion |
| ---------- | ------- |
| TypeScript | 4.5.5   |
| React      | 17.0.2  |
| Next       | 12.0.8  |
| PHP        | 8.0.15  |
| Laravel    | 8.75    |

## DB 用 Dockerfile の修正（M1Mac）

`.docker/db/Dockerfile`を修正

```diff
- FROM mysql:8.0
+ FROM --platform=linux/x86_64 mysql:8.0

ENV TZ=UTC
COPY my.cnf /etc/my.cnf
```

## 環境構築

s

```sh
make init
```

## 確認事項

### api(Laravel)

- `api`ディレクトリ内に Laravel がインストールされている
- `localhost:80`にアクセスすると Laravel のウェルカムページが表示される

### frontend(Next.js)

- `front`ディレクトリ内に Next.js がインストールされる
- `localhost:3000`にアクセスすると Next.js の文字が表示される

## GUI ツールで DB に接続

- ホスト: 127.0.0.1
- ユーザー: user
- パスワード: password
- データベース: next_laravel
