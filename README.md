# Kagomoku-firebase-example
かごもく用のfirabase-exmapless。イベントはこちらからどうぞ。

https://kagoben.connpass.com/event/172399/

## Development-1 (Don't Use examples)
環境：Use Docker and Docker Component

### Build the environment

```
# on ホストOS

$ docker-compose up -d --build
$ docker-compose exec app sh
```

### create Vue.js App
Vue.jsは今回のメインではないので、Vue.jsの設定はお好みで。<br>
Create-React-Appでも大丈夫です。

```
$ vue create .
```

See http://localhost:8080

### firebase setup

```
$ firebase login --no-localhost
$ firebase init hosting
```

### build vue app & firebase deploy
examplesではbuild先を<code>dist</code>に設定<br>
firebase.jsonの中身を必要に応じて変更してください。

```
$ npm run build
$ firebase deploy
```

See Hosting URL: https:/<Project_Name>.web.app


## Development-2 (Use examples)

### git clone my app
```
# on ホストOS

$ git clone https://github.com/Shimpei-GANGAN/Kagomoku-firebase-example
```

### Build the environment (Use Docker)

```
# on ホストOS

$ sh docker.sh build
$ sh docker.sh start
```

### check with localhost

```
# on Docker

$ npm install
$ npm run dev
```

See http://localhost:8080

### firebase setup

```
# on Docker

$ firebase login --no-localhost
$ firebase init hosting
```

### build vue app & firebase deploy

```
# on Docker

$ npm run deploy
```

See Hosting URL: https:/<Project_Name>.web.app


