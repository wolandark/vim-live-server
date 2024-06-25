# Vim Live Server
## Preview your web development in your browser in real time.
A dead-simple live server for Vim/NeoVim <br>
Supporting [live-server](https://www.npmjs.com/package/live-server) and [browser-sync](https://www.npmjs.com/package/browser-sync).

# Index

- [Vim Live Server](#vim-live-server)
  - [Preview your web development in your browser in real time.](#preview-your-web-development-in-your-browser-in-real-time)
- [Dependency](#dependency)
- [Installation](#installation)
  - [Using Vim packages](#using-vim-packages)
  - [Using vim-plug](#using-vim-plug)
  - [Using Vundle](#using-vundle)
  - [Using Pathogen](#using-pathogen)
- [Usage](#usage)
- [Optional keybindings](#optional-keybindings)
- [Demo](#demo)
- [Note on Two Backends](#note-on-two-backends)
- [Contact me](#contact-me)


## Dependency
- nodejs 
- npm

Install either the `live-server` or the `browser-sync` package globally using npm:
```
sudo npm install -g live-server
sudo npm install -g browser-sync
```

# Installation
Use your favorite Vim plugin manager to install [vim-live-server](https://github.com/wolandark/vim-live-server).

#### Using Vim [packages](https://vimhelp.org/repeat.txt.html#packages)	

(**needs Vim 8+**)
```
git clone https://github.com/wolandark/vim-live-server.git ~/.vim/pack/plugins/start/vim-live-server/
```
#### Using [vim-plug](https://github.com/junegunn/vim-plug)

Add the following line to your plugin configuration in your .vimrc file:
```
Plug 'https://github.com/wolandark/vim-live-server.git'
```
With vimplug you can use one of these alternative commands that uses a post-installation hook to download the live-server or the browser-sync package from npm automatically:

```
Plug 'https://github.com/wolandark/vim-live-server.git', { 'do': 'sudo npm install -g live-server' }
Plug 'https://github.com/wolandark/vim-live-server.git', { 'do': 'sudo npm install -g browser-sync' }
```

#### Using [Vundle](https://github.com/VundleVim/Vundle.vim)

```
Plugin 'https://github.com/wolandark/vim-live-server.git'
```

#### Using [Pathogen](https://github.com/tpope/vim-pathogen)

Clone the vim-live-server repository into your Vim bundle directory:
```
cd ~/.vim/bundle
git clone https://github.com/wolandark/vim-live-server.git
```

# Usage
Open your index.html file in vim and issue the following in ex-mode. live-server will start and bind itself to `localhost:8080` and `browser-sync` will bind to `localhost:3000`.<br>
_Notice that all of the commands use pascal case_<br>
```
StartLiveServer

or

StartBrowserSync
```
Vim Live Server opens your default browser automatically. <br>

To start serving on a specific port, use:
```
StartLiveServerOnPort N
StartLiveServerOnPort 2222

StartBrowserSyncOnPort N
StartBrowserSyncOnPort 3001
```

To kill the server on the default port 3000 use this:
```
KillLiveServer

KillBrowserSync
```
Use this command to kill the server on a certain port:
```
KillLiveServerOnPort N
KillLiveServerOnPort 2222

KillBrowserSyncOnPort N
KillBrowserSyncOnPort 3001
```
_Note:
vim-live-server will kill all running instances of live-server and browser-sync on [VimLeave](https://vimhelp.org/autocmd.txt.html#VimLeave)._

# Optional keybindings
```
nmap <F2> :StartLiveServer <CR>
nmap <F3> :KillLiveServer <CR>

nmap <F2> :StartBrowserSync <CR>
nmap <F3> :KillBrowserSync <CR>
```

<h1 align="center">Thats it! Enjoy!</h1>

# Demo
https://github.com/wolandark/browser-sync/assets/107309764/218cb8a0-459a-43cd-a987-1b43d1fb2b92

# Note on Two Backends
Vim Live Server offers flexibility by supporting two backend options: `live-server` and `browser-sync`. However, users need to install and use only one of them, depending on their preferences and requirements.

The inclusion of `live-server` is motivated by its straightforward and efficient approach, and a 'no-nonsense' nature. Notably, it avoids resetting the scroll position on reload, providing a seamless experience during development.

Choose the backend that best aligns with your workflow and and enjoy using you favorite editor for development.

# Contact me
Feel free to reach out on Telegram or email for support, feedback, or contributions.

[![Telegram](https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/wolandarkside)
[![Protonmail](https://img.shields.io/badge/ProtonMail-8B89CC?style=for-the-badge&logo=protonmail&logoColor=white)](mailto:contact-woland@proton.me)
