package pers.platform.core.auth.service;
//提供邮件服务，支持分布式事物，支持定时发送，可动态配置
//1.同步方式，dubbo，返回邮件发送成功/失败信息
//2.异步方式，消息队列，设置重发机制，重发次数，
//api 对外开放