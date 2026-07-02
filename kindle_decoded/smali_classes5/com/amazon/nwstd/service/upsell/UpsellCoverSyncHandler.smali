.class public Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;
.super Ljava/lang/Object;
.source "UpsellCoverSyncHandler.java"

# interfaces
.implements Lcom/amazon/nwstd/service/IIntentHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mParentAsins:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private filterParentAsinsToSync([Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 12

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "upsell.coversync.timestamp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {p2}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v6

    if-lez v10, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 181
    :goto_1
    invoke-static {v6}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    move-wide v6, v8

    :cond_1
    if-eqz v5, :cond_3

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    goto :goto_2

    .line 188
    :cond_2
    sget-object v5, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cover Sync: parent ASIN="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " won\'t be sync since last cover sync has been done "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms ago"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v8, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 186
    :cond_3
    :goto_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private reportCoverSyncTimer(J)V
    .locals 6

    .line 156
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "NewsstandCECoverSyncTimer"

    const-string v2, "CEIntentDuration"

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string v0, "UpsellCoverSync"

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v1, p0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UpsellCoverSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string v4, "ParentAsins"

    move-object/from16 v5, p2

    .line 70
    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->mParentAsins:[Ljava/lang/String;

    const/16 v5, 0x10

    const-string v6, "CEIntentFailure"

    const-string v7, "NewsstandCECoverSync"

    if-nez v4, :cond_1

    .line 72
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    const-string v4, "Cover sync cannot be performed as the parent asin is not specified"

    invoke-static {v0, v5, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->reportCoverSyncTimer(J)V

    return-void

    .line 79
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v4, v8}, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->filterParentAsinsToSync([Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 80
    array-length v8, v4

    if-nez v8, :cond_2

    goto/16 :goto_2

    .line 87
    :cond_2
    new-instance v8, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;

    move-object/from16 v9, p1

    invoke-direct {v8, v9}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v8}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->preloadReaderData()Z

    move-result v8

    if-nez v8, :cond_3

    .line 90
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    const/16 v4, 0x8

    const-string v5, "failed to load tokens, sync is aborted"

    invoke-static {v0, v4, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->reportCoverSyncTimer(J)V

    return-void

    .line 96
    :cond_3
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v8

    const/4 v15, 0x4

    if-nez v8, :cond_4

    .line 98
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    const-string v4, "Cover sync cannot be performed as user is not registered yet"

    invoke-static {v0, v15, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->reportCoverSyncTimer(J)V

    return-void

    .line 104
    :cond_4
    sget-object v8, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Running upsell cover sync for : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->mParentAsins:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v15, v10}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getPFM()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-static {v8}, Lcom/amazon/nwstd/utils/UpsellServiceUtils;->isSupportedPFMUpsell(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 109
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    const-string v4, "Customer does not belong to the domains supported for Upsell, cover sync aborted"

    invoke-static {v0, v15, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v4, "IgnoreCoverSyncBasedOnPfm"

    invoke-virtual {v0, v7, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-direct {v1, v8, v9}, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->reportCoverSyncTimer(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    .line 114
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v10

    .line 115
    invoke-static {v8}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getCEResourcesEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 116
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getDeviceType()Ljava/lang/String;

    move-result-object v12

    .line 117
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 118
    sget-object v13, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v13}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v14

    .line 119
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getCookie()Ljava/lang/String;

    move-result-object v13

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v0

    const/4 v0, 0x4

    move-object v15, v8

    move-object/from16 v17, v4

    invoke-static/range {v9 .. v17}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->createInstance(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 123
    sget-object v8, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->COVER_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    invoke-virtual {v4, v8}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->sync(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    move-result-object v4

    .line 124
    sget-object v8, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upsell cover sync code result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v0, v9}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler$1;->$SwitchMap$com$amazon$nwstd$upsell$fetcher$UpsellDataFetcher$SyncResult:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    goto :goto_0

    .line 133
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v4, "CEIntentIgnoredOffline"

    invoke-virtual {v0, v7, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_8
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v4, "CEIntentSuccess"

    invoke-virtual {v0, v7, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 142
    :try_start_2
    sget-object v4, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->TAG:Ljava/lang/String;

    const-string v8, "Failed to fetch upsell cover resources"

    invoke-static {v4, v5, v8, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :cond_9
    :goto_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->reportCoverSyncTimer(J)V

    return-void

    .line 146
    :goto_1
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 147
    throw v0

    .line 81
    :cond_a
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v4, "CEIntentIgnored"

    invoke-virtual {v0, v7, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Lcom/amazon/nwstd/service/upsell/UpsellCoverSyncHandler;->reportCoverSyncTimer(J)V

    return-void
.end method
