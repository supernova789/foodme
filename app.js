var PORT = process.argv[2] && parseInt(process.argv[2], 10) || 8080;
var STATIC_DIR = __dirname + '/app';
var TEST_DIR = __dirname + '/test';
var DATA_FILE = __dirname + '/server/data/restaurants.json';

require('./server/index').start(PORT, STATIC_DIR, DATA_FILE, TEST_DIR);
