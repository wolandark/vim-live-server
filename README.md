### Vim Live Server
 A dead-simple live server implementation using [browser-sync](https://www.npmjs.com/package/browser-sync).
 
 Preview your code in your browser as you change it with ease.

### Dependency
nodejs & npm

### Installation
Using [vim-plug](https://github.com/junegunn/vim-plug):

Make sure you have _nodejs_, _npm_ and _vim-plug_ installed _(all three packages are present in every distro's repositories)_ and then
* using <code>sudo npm install -g browser-sync</code> install the browser-sync package.
* add the following line to your plugin configuration in your .vimrc
```
Plug 'https://github.com/wolandark/browser-sync.git'
```
or use this alternative that uses a post installation hook to download the browser-sync package from npm automatically
```
Plug 'https://github.com/wolandark/browser-sync.git', { 'do': 'npm install browser-sync' }
```
### Usage
Open your index.html file in vim and issue the following in cmd-mode. The server will start and bind itself to `localhost:3000`

```
StartBrowserSync
```

To start serving on a specific port, use:
```
StartBrowserSyncOnPort N
StartBrowserSyncOnPort 3009
```

To kill the server on the default port 3000 use this:
```
KillBrowserSync
```
Use this command to kill the server on a certain port:
```
KillBrowserSyncOnPort N
KillBrowserSyncOnPort 3006
```
### Optional keybindings
```
nmap <F2> :StartBrowserSync <CR>
nmap <F3> :KillBrowserSync <CR>
nmap <F4> :StartBrowserSyncOnPort
nmap <F5> :KillBrowserSyncOnPort
```

### Thats it!
Enjoy!

### Demo
https://github.com/wolandark/browser-sync/assets/107309764/218cb8a0-459a-43cd-a987-1b43d1fb2b92

### Contact me
[![Telegram](https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/wolandarkside)
[![Protonmail](https://img.shields.io/badge/ProtonMail-8B89CC?style=for-the-badge&logo=protonmail&logoColor=white)](mailto:contact-woland@proton.me)




