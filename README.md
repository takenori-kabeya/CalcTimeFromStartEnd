# CalcTimeFromStartEnd

redmineで、カスタムフィールド「開始日時」「終了日時」を用いて、作業時間を自動計算するプラグインです。

使い方

1. カスタムフィールドとして「作業時間」に、「開始日時」「終了日時」フィールドを追加します。
フィールド名は上記の通りにしてください。型はテキストで、正規表現に「^(\d{4}/){0,1}(\d{1,2}/\d{1,2}\s+){0,1}\d{1,2}:\d{2}$」を入れておくと良いでしょう
2. redmineのpluginsフォルダに、calc_time_from_start_endフォルダをコピーします。
3. redmineを再起動します。
4. チケットなどの「時間を記録」から作業時間入力画面に来たら、時間にいったん何か数字を入れ、開始日時に開始した日時を入れて保存します。
5. 作業が終わったらチケットの画面に表示される「作業時間」タブから、該当レコードの編集（鉛筆）ボタンを押して終了日時を入れて保存します。
6. 保存したときに時間が自動計算されます。

0時間だと「作業時間」タブが表示されないので、最初は0.01かなにか、0でない数字を入れるとよいでしょう。

ZeroTimeTabプラグインを入れると、0時間でも「作業時間」タブが表示されます。
また、InitialZeroHourプラグインを入れると、初期表示時に自動で0時間が設定され、かつ開始日時に現時刻が自動入力されます。
併用すると便利です。
