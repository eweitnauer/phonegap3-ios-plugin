var exec = require('cordova/exec');
/**
 * Constructor
 */
function SimplePlugin() {}

SimplePlugin.prototype.hello = function() {
  exec(function(result){
      // result handler
      alert(result);
    },
    function(error){
      // error handler
      alert("Error" + error);
    },
    "SimplePlugin",
    "hello",
    []
  );
}

SimplePlugin.prototype.add = function(a,b,f) {
  exec(function(sum){
        // result handler
       f(sum);
    },
    function(error){
        // error handler
        alert("Error" + error);
    },
    "SimplePlugin",
    "add",
    [a,b]
  );
}

SimplePlugin.prototype.echo = function(msg) {
exec(function(echo_msg){
      // result handler
      alert(echo_msg);
    },
    function(error){
      // error handler
      alert("Error" + error);
    },
    "SimplePlugin",
    "echo",
    [msg]
    );
}

var simplePlugin = new SimplePlugin();
module.exports = simplePlugin