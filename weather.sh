#!/bin/bash
# @function 从中国天气网API获取天气信息
# @author chenxu
# @date 2016-12-20
# 1.获取实时天气信息的接口:http://www.weather.com.cn/data/sk/{city_id}.html
# 返回数据格式:{"weatherinfo":{"city":"西安","cityid":"101110101","temp":"20","WD":"西南风","WS":"1级","SD":"14%","WSE":"1","time":"17:00","isRadar":"1","Radar":"JC_RADAR_AZ9290_JB","njd":"暂无实况","qy":"970","rain":"0"}}
# 2.获取全天天气信息的接口:http://www.weather.com.cn/data/cityinfo/{city_id}.html
# 3.城市ID对应关系
# 101010100=北京
# 101020100=上海
# 101021200=徐家汇
# 101040100=重庆
# 101280101=广州
# 101240701=赣州
# 101240706=信丰
# 101280601=深圳
# 101281201=河源
# 101240704=南康
# 101270101=成都