# Phonegap iOS Plugin Example

## Installation

- have [Node](http://nodejs.org/) and [Cordova](http://cordova.apache.org/) installed.
- create example app

```bash
cordova create plugin-demo
cd plugin-demo
cordova platform add ios
```

- add the plugin

```bash
cordova plugin add https://github.com/eweitnauer/phonegap-simple-plugin
```

- add buttons to `index.html`

```html
<button onclick="simplePlugin.hello();">Greeting from your plugin.</button>
<button onclick="simplePlugin.echo('Hallo Echo!');">Hallo Echo!</button>
<button onclick="simplePlugin.add(1,2,function(sum) {alert(sum)});">1+2=</button>
```

- prepare the ios project `cordova prepare` open in Xcode, build and run it!

## Author

By Erik Weitnauer inspired by Jens Krause's [example](https://github.com/sectore/phonegap3-native-ios-plugin).