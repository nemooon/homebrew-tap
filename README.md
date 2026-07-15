# homebrew-tap

nemooon の Homebrew tap。

## 使い方

```sh
brew install --cask nemooon/tap/hako
brew install --cask nemooon/tap/neruna
```

いずれも未署名アプリのため、初回起動時に Gatekeeper の警告が出る場合は
右クリック →「開く」で起動するか、quarantine 属性を外してください:

```sh
xattr -dr com.apple.quarantine /Applications/<アプリ名>.app
```

## Casks

| Cask | 説明 |
|------|------|
| [hako](Casks/hako.rb) | [Colima](https://github.com/abiosoft/colima) とコンテナの状態を表示・操作するメニューバーアプリ |
| [neruna](Casks/neruna.rb) | `caffeinate` でMacのスリープを防止するメニューバーアプリ |
