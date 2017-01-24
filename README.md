# coffee-node-skeleton
### Set yourself up right.
(For Mac only)

<br>
<br>
### Set Up

Clone repository: `git clone https://github.com/cd17822/coffee-node-skeleton.git`

Change into repo directory: `cd coffee-node-skeleton`

Install modules: `npm install`

Terminal should be running (each its own window): `mongod` `nodemon app.coffee`

Not working? See below if there are additional configurations you've yet to set up.

<br>
<br>
### The Basics
**Install Xcode:**

Open and Agree to Terms

<br>
**Install Homebrew:**


`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

<br>
**Install npm:**


`brew install npm`

<br>
**Install mongodb:**


`brew install mongodb`

`sudo mkdir /data`

`sudo mkdir /data/db`

```sudo chown -R `id -u` /data/db```

<br>
**Install coffee-script:**

`npm install -g coffee-script`

<br>
**Install nodemon:**

`npm install -g nodemon`

<br>
<br>
### Editing
**Download SublimeText 3:**


<http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203083.dmg>

<br>
**Install Sublime Package Control:**

Open Python Console: **ctrl+`**

Type into python console:

```python
import urllib.request,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

<br>
**Install Better Coffeescript:**


cmd+shift+P

_Package Control: Install Package_

_Better Coffeescript_


<br>
**Install Jade:**


cmd+shift+P

_Package Control: Install Package_

_Jade_

<br>
<br>
###Testing
**View content in browser**

Assuming port is 3005: <http://localhost:3005>

<br>
**Use Postman to test API Calls**

Download in chrome: <https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en>

<br>
**Sift through MongoDB**

- Begin mongo shell: `mongo`
- Show databases in your system: `show dbs`
- Use database "project": `use project`
- Show collections in project `show collections`
- Find all users in current database: `db.users.find()`
