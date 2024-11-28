# robosys2024 HomeWork1 "Calculator"

通常の四則演算に加えて、累乗や三角・指数対数関数、自然数eを扱うことが出来る計算機です。

## ダウンロード方法

以下の手順に従ってください

リポジトリをクローン
```git clone https://github.com/Tsukasa-Arakawa/robosys2024```

ディレクトリに移動
```cd robosys2024``` 

## 使い方
定数を入力するときはｃを、関数を使うときはｆの後に対応したキーを入力してから数字を入力してください。

関数の使い方  
- 平方根√　 例：√3 → fq3
- 三角関数　s(sin),c(cos),t(tan)に対応。入力例：sin30° → fs30  
- 指数関数　例：7² → fp7,2  
- 対数関数  例：log₃9 → fl3,9  
- 自然数e   例：e¹ → fe1
  
- 例１(12+3)  
c12 と入力```Enter a value : c12```  
演算子を入力```Enter an operator : +```  
c3 と入力```Enter a value : c3```  
エンターを押すと一時的な結果が表示される```Result: 15.0```  
終了する場合は演算子入力時に＝と入力。  
```
echo "c12 + c3 =" | ./calculator
Result: 15.0   
```

- 例２(2+cos180°)  
c2 と入力```Enter a value : c2```  
演算子を入力```Enter an operator : +```  
fs180 と入力```Enter a value : fc180```  
エンターを押すと一時的な結果が表示される```Result: 1.0```  
終了する場合は演算子入力時に＝と入力。  
```
echo "c2 + fc180 =" | ./calculator
Result: 1.0
```

- 例３ ((√4+10²)*log₄16))  
fq4 と入力```Enter a value : fq4```  
演算子を入力```Enter an operator : +```  
fp10,2 と入力```Enter a value : fp10,2```  
演算子を入力```Enter an operator : *```  
fl4,16 と入力```Enter a value : fl4,16```  
エンターを押すと一時的な結果が表示される```Result: 204.0```  
終了する場合は演算子入力時に＝と入力。  
```一連の流れ
echo "fq4 + fp10,2 + fl4,16 =" | ./calculator
Result: 204.0
```

## テスト済み環境
- 実行環境：GitHub が提供する最新の Ubuntu ベースの仮想環境
- Python version：3.7~3.12
## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．  
- © 2024 Tsukasa Arakawa  

## 参考にしたウェブサイト
([5分でマスター]初心者はまずREADMEを書け[テンプレート付き])[https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f]
