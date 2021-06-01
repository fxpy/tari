# Tari

ver 0.8.9

To install Tari node run

```
wget -O tari.sh https://raw.githubusercontent.com/fxpy/tari/main/tari_install.sh && chmod +x tari.sh && ./tari.sh
```

after installation wait for base node to sync

then detach screen with `Ctrl+A D` combination and run wallet

```
cd tari
screen -S wallet ./tari_console_wallet
```

save mnemonic and confirm. Detach screen with `Ctrl+A D` and run miner

```
screen -S wallet ./tari_mining_node
```

To check work switch between screens with

```
screen -r node
screen -r wallet
screen -r miner
```
