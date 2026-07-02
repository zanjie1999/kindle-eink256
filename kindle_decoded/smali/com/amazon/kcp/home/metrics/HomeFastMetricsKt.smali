.class public final Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;
.super Ljava/lang/Object;
.source "HomeFastMetrics.kt"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.home.metrics.HomeFastMetrics"


# direct methods
.method private static final emitStalenessData(Ljava/lang/String;)V
    .locals 7

    .line 120
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;->getInstance()Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManager;->getCurrentHomeFeed()Lcom/amazon/kcp/home/models/HomeFeed;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/amazon/kcp/home/models/HomeFeed;->UNINITIALIZED_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.amazon.kcp.home.metrics.HomeFastMetrics"

    if-nez v1, :cond_2

    sget-object v1, Lcom/amazon/kcp/home/models/HomeFeed;->EMPTY_FEED:Lcom/amazon/kcp/home/models/HomeFeed;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v3, "Utils.getFactory()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "Utils.getFactory().kindl\u2026.metricsManager ?: return"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/HomeFeed;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".Age"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HomeFeed.Android"

    invoke-interface {v1, v5, v0, v3, v4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting PMET staleness metric for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".Age = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "Failed to report staleness since feed is uninitialized or empty"

    .line 122
    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final recordAction(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    const-string v3, "$this$recordAction"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "data"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "action"

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "Action"

    .line 69
    invoke-static {v6}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->emitStalenessData(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "home_actions_android"

    .line 72
    invoke-interface {v0, v7, v6}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v7

    if-eqz p6, :cond_0

    move-object/from16 v8, p6

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v8

    :goto_0
    const-string/jumbo v9, "reftag"

    invoke-interface {v7, v9, v8}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v8

    const-string/jumbo v10, "widget_position"

    invoke-interface {v7, v10, v8}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v8

    const-string v11, "action_type"

    invoke-interface {v7, v11, v8}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v8, "UNKNOWN"

    if-eqz p3, :cond_1

    move-object/from16 v12, p3

    goto :goto_1

    :cond_1
    move-object v12, v8

    :goto_1
    const-string v13, "action_source"

    .line 77
    invoke-interface {v7, v13, v12}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v12, "item_asin"

    if-eqz v1, :cond_2

    .line 79
    invoke-interface {v7, v12, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_2
    const-string v14, "item_position"

    const/4 v15, -0x1

    if-le v2, v15, :cond_3

    .line 82
    invoke-interface {v7, v14, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 84
    :cond_3
    invoke-interface {v7}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 88
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "home_actions_fos"

    goto :goto_2

    :cond_4
    const-string v7, "home_actions_v4_android"

    .line 93
    :goto_2
    invoke-interface {v0, v7, v6}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v6

    if-eqz p6, :cond_5

    move-object/from16 v7, p6

    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-interface {v6, v9, v7}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v7

    invoke-interface {v6, v10, v7}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v11, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p3, :cond_6

    move-object/from16 v8, p3

    .line 98
    :cond_6
    invoke-interface {v6, v13, v8}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "widget_id"

    invoke-interface {v6, v7, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getSessionId()Ljava/lang/String;

    move-result-object v3

    const-string v7, ""

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v7

    :goto_4
    const-string/jumbo v8, "retail_session_id"

    invoke-interface {v6, v8, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/home/model/HomeAction;->getArgs()Ljava/util/Map;

    move-result-object v3

    const-string v8, "linkParameters"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getLinkParams()Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    move-object v3, v7

    :goto_6
    const-string v8, "link_params"

    invoke-interface {v6, v8, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getSidekickMetadata()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object v7, v3

    :cond_a
    const-string/jumbo v3, "sidekick_metadata"

    invoke-interface {v6, v3, v7}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 103
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    const-string v7, "AndroidApplicationController.getInstance()"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v7, "kindle_app_version"

    invoke-interface {v6, v7, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz v1, :cond_b

    .line 105
    invoke-interface {v6, v12, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    :cond_b
    if-le v2, v15, :cond_c

    .line 108
    invoke-interface {v6, v14, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 111
    :cond_c
    invoke-interface {v6}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording Home action metric: reftag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kcp.home.metrics.HomeFastMetrics"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const/4 v7, -0x1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 67
    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V
    .locals 5

    const-string v0, "$this$recordImpression"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Impression"

    .line 21
    invoke-static {v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->emitStalenessData(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "home_impressions_android"

    .line 24
    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "reftag"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 26
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v2

    const-string/jumbo v4, "widget_position"

    invoke-interface {v1, v4, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 28
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 32
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "home_impressions_fos"

    goto :goto_0

    :cond_0
    const-string v1, "home_impressions_v4_android"

    .line 37
    :goto_0
    invoke-interface {p0, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v1

    invoke-interface {v0, v4, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widget_id"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string/jumbo v3, "retail_session_id"

    invoke-interface {v0, v3, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 42
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getLinkParams()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v3, "link_params"

    invoke-interface {v0, v3, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getSidekickMetadata()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v2, v1

    :cond_3
    const-string/jumbo v1, "sidekick_metadata"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 44
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    const-string v2, "AndroidApplicationController.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kindle_app_version"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 46
    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recording Home impression metric: reftag="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; position="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.amazon.kcp.home.metrics.HomeFastMetrics"

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
