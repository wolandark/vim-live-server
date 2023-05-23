### browser-sync
A dead-simple live server implementation using [browser-sync](https://www.npmjs.com/package/browser-sync)

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
Open your index.html file in vim and issue the following in cmd-mode:
```
StartBrowserSync
```
The server will start and bind itself to `localhost:3000`
