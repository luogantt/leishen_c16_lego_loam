
"use strict";

let motor_control = require('./motor_control.js')
let destination_ip = require('./destination_ip.js')
let remove_control = require('./remove_control.js')
let data_port = require('./data_port.js')
let data_ip = require('./data_ip.js')
let dev_port = require('./dev_port.js')
let motor_speed = require('./motor_speed.js')
let lslidar_control = require('./lslidar_control.js')
let time_service = require('./time_service.js')

module.exports = {
  motor_control: motor_control,
  destination_ip: destination_ip,
  remove_control: remove_control,
  data_port: data_port,
  data_ip: data_ip,
  dev_port: dev_port,
  motor_speed: motor_speed,
  lslidar_control: lslidar_control,
  time_service: time_service,
};
