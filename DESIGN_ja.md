## 設計メモ

### アイデアの羅列

 * 対訳表を管理したい。
 * 出力形式は TSV,TMX,skk などなど (Debian JP の対訳表と同様のものを出したい)。
 * 一つの単語に対して言語ごとに複数の訳語を設定したい。
 * とりあえず、英語をキーに他言語を訳す
 * キーと各訳語にコメントを付けられるようにする
 * キーを便宜上翻訳単位(unit)と呼ぶ
   * 対応する訳語(term)を持つ

### DB

 * 1翻訳単位(unit) に対して複数の訳語(term)がある
 * 同じ言語でも複数のtermを持てる
 * unitには登録日、更新日、コメント(note)を持つ
 * termには文字列(segment)、言語(lang)、更新日、要修正フラグ(fuzzy)、コメント(note)を持つ

