## 🧿 Solana Wallet App — Flutter + Web3
A modern crypto wallet built with Flutter and Solana.
Easily view charts, manage wallets, swap tokens, and track transactions — all in one smooth mobile experience.

✨ Features
📊 Live Crypto Chart
Realtime price chart for SOL/USDT with candlesticks.

🔐 Create / Restore Wallet
Generate a new Solana wallet with 12-word mnemonic or restore an existing one.

💱 Token Swap (SOL ⇄ USDT)
Instantly swap between SOL and USDT via on-chain logic.

📜 Transaction History
View past transactions, with full detail and token transfers.

✅ Mnemonic Confirmation Flow
Secure onboarding with phrase verification to protect user funds.

## 🔧 Dependencies & Tech Highlights

| Type            | Package                              | Description                                             |
|-----------------|--------------------------------------|---------------------------------------------------------|
| 🧠 **State Mgmt** | `flutter_bloc`, `equatable`          | Clean, reactive architecture using the BLoC pattern.    |
| 🛠 **Codegen**    | `freezed`, `json_serializable`, `build_runner` | Generate data classes, unions, and handle serialization.|
| 💾 **Storage**    | `flutter_secure_storage`             | Secure storage of wallet data.                          |
| 🧮 **Charts**     | `fl_chart`, `syncfusion_flutter_charts` | Supports Candlestick and line charts.                   |
| 🌐 **Networking** | `dio`, `convert`, `intl`, `crypto`   | API calls, formatting, and cryptographic operations.    |
| 🌍 **Routing**    | `go_router`                          | Declarative routing for better navigation management.   |
| 🧩 **UI**         | `flutter_svg`, `cupertino_icons`     | Icons and SVGs for a rich user interface.               |
| 🔗 **Web3 & Solana** | `solana`, `solana_web3`, `ed25519_hd_key`, `bs58`, `pinenacl` | Solana wallet management, signing, base58 encoding, and HD key derivation. |


📸 Screenshots
<p align="center">
    <img src="https://raw.githubusercontent.com/Liyafar27/my_storage/refs/heads/master/Simulator%20Screenshot%20-%20iPhone%20SE%20(3rd%20generation)%20-%202025-04-08%20at%2017.23.02.png" width="250" alt="accessibility text">  
    <img src="https://raw.githubusercontent.com/Liyafar27/my_storage/refs/heads/master/Simulator%20Screenshot%20-%20iPhone%20SE%20(3rd%20generation)%20-%202025-04-08%20at%2017.23.24.png" width="250" alt="accessibility text">
        <img src="https://raw.githubusercontent.com/Liyafar27/my_storage/refs/heads/master/Simulator%20Screenshot%20-%20iPhone%20SE%20(3rd%20generation)%20-%202025-04-08%20at%2017.23.45.png" width="250" alt="accessibility text">

 <p align="center">
    <img src="https://raw.githubusercontent.com/Liyafar27/my_storage/refs/heads/master/Simulator%20Screenshot%20-%20iPhone%20SE%20(3rd%20generation)%20-%202025-04-08%20at%2017.25.23.png" width="250" alt="accessibility text">  
    <img src="https://raw.githubusercontent.com/Liyafar27/my_storage/refs/heads/master/Simulator%20Screenshot%20-%20iPhone%20SE%20(3rd%20generation)%20-%202025-04-08%20at%2017.27.29.png" width="250" alt="accessibility text">
 <img src="https://raw.githubusercontent.com/Liyafar27/my_storage/refs/heads/master/Simulator%20Screenshot%20-%20iPhone%20SE%20(3rd%20generation)%20-%202025-04-08%20at%2017.27.55.png" width="250" alt="accessibility text">
🚀 Getting Started
bash
```
git clone [https://github.com/yourusername/solana-wallet-app](https://github.com/Liyafar27/solana_wallet_web3.git
cd solana-wallet-app
flutter pub get
flutter run
```

You’ll need a Phantom-compatible Solana devnet wallet and optionally set up your own RPC endpoint.

🛡️ Disclaimer
This project is for educational purposes only.
Always test with Solana devnet before using on mainnet.
## 🔒 Security & Privacy

This app is 100% self-custodial:
- The mnemonic phrase and private keys are generated and stored **only in memory**.
- Nothing sensitive is sent over the network.
- Users are responsible for backing up their wallet securely.
- All transactions are signed locally.

We never store or transmit private keys or mnemonics.
