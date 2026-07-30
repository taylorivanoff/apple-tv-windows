const path = require('path');
require('icloud-windows-base').run({
  appName: 'Apple TV',
  protocol: 'apple-tv',
  icloudUrl: 'https://tv.apple.com',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
