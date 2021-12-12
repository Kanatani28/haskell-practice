[この問題](https://leetcode.com/problems/longest-common-prefix/)を Haskell で解いてみる

以下は引用

文字列の配列を受け取って最も長いプレフィックスを返す関数を書け。  
もし共通プレフィックスがない場合は空文字列を返すこと。

## 例 1:

```
入力: strs = ["flower","flow","flight"]
出力: "fl"
```

## 例 2:

```
入力: strs = ["dog","racecar","car"]
出力: ""
Explanation: 共通の文字列なし
```

## 制約:

- `1 <= strs.length <= 200`
- `0 <= strs[i].length <= 200`
- `strs[i]` は英語小文字のみ
