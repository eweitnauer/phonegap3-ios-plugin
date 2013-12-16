# Simple Example of an Phonegap iOS Plugin

## Installation

- have [Node](http://nodejs.org/) and [Cordova]() installed.
- create example app
```bash
cordova create plugin-demo && cd $_
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
- Build and run app in XCode

```bash
phonegap run ios
```

## Author

By Erik Weitnauer inspired by Jens Krause's [example](https://github.com/sectore/phonegap3-native-ios-plugin).