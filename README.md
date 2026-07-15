# homebrew-tap

nemooon の Homebrew tap。

## 使い方

```sh
brew install --cask nemooon/tap/hako
brew install --cask nemooon/tap/neruna
```

いずれも Apple Developer ID 署名なしのため、macOS が quarantine を付けて
起動をブロックします。初回起動前に属性を外してください:

```sh
xattr -dr com.apple.quarantine /Applications/<アプリ名>.app
```

または、一度起動を試したあと「システム設定 → プライバシーとセキュリティ」の
セキュリティ欄で「このまま開く」を選びます。

> macOS 15 (Sequoia) 以降、右クリック →「開く」による回避は
> [Apple が削除](https://www.idownloadblog.com/2024/08/07/apple-macos-sequoia-gatekeeper-change-install-unsigned-apps-mac/)しました。
> `brew install --cask --no-quarantine` も Homebrew 6.x で廃止されています。

## Casks

| Cask | 説明 |
|------|------|
| [hako](Casks/hako.rb) | [Colima](https://github.com/abiosoft/colima) とコンテナの状態を表示・操作するメニューバーアプリ |
| [neruna](Casks/neruna.rb) | `caffeinate` でMacのスリープを防止するメニューバーアプリ |
