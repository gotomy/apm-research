# APM RESEARCH

微服务架构相对于传统单体架构，通过服务的拆分，减少了单体服务的复杂性，但由各个微服务组成的整体系统架构，相之于单体架构带来灵活性的同时，却引入了系统复杂度。在微服务系统中，一条请求不在像单体架构那样单一，请求服务A, 服务A调用了服务B, 服务B又调用了服务C, 这样的请求链路在微服务系统中是非常常见了。

所以，整个微服务组成系统的治理体系还是非常复杂的，涉及的方面也比较多，其中，微服务的链接监控和跟踪是微服务治理的一个重要组成部分。

业界在微服务链接追踪上有许多开源的解决方案，其中Skywalking， Jaeger在众多APM系统中比较优秀。

## Skywalking

Apache Skywalking(Incubator) 专门为微服务架构和云原生架构系统而设计并且支持分布式链路追踪的APM系统。Apache Skywalking(Incubator)通过加载探针的方式收集应用调用链路信息，并对采集的调用链路信息进行分析，生成应用间关系和服务间关系以及服务指标。Apache Skywalking (Incubating)目前支持多种语言，其中包括Java，.Net Core，Node.js和Go语言。

Skywalking官方系统架构
![sykwalking architecture](./assets/skywalking-arch.jpeg)

Skywalking主要由四部分组成：

1. trace agent

Skywalking目前支付包括了.Net Core, Golang, Node.js和Java多种语言的agent实现。

2. oap server

它是skywalking的核心服务，负责接收来自agent的追踪链路信息，进行分析和存储，同时向skywalking ui用户端口提供数据接口服务。

3. skywalking存储

skywalking支持多种存储形式，从基于文件的h2数据库，到elasticsearch分布式搜索存储。

4. skywalking ui

skywalking用户界面，提供概览、系统拓扑结构，链路追踪等功能。

## Jaeger

