module.exports = async (req, res) => {
    var os = require("os");
    var hostname = os.hostname();
    res.send(hostname);
    console.log("Received request from: " + req.ip);
};