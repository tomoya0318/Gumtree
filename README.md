## Gumtreeとは
テキスト間の差分を解析できるツール  
他のコマンドは[wiki](https://github.com/GumTreeDiff/gumtree/wiki/Commands)参照
## setup
1. dockerコンテナの立ち上げ
```
docker compose up -d
```
2. docker環境に入る
```
docker exec -it gumtree bash
```
3. Gumtreeのコマンド
   1. webdiff(ブラウザで視覚的に変更差分を見る)
    ```
    gumtree webdiff "変更前ファイルへのpath" "変更後のファイルへのpath"
    ```
   2. textdiff(テキストベースで変更を取得)
    ```
    gumtree textdiff -f JSON "変更前ファイルへのpath" "変更後のファイルへのpath"
    ```
4. dockerコンテナの停止
```
docker compose down
```