.class public Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;
.super Ljava/lang/Object;
.source "UpsellFullSyncHandler.java"

# interfaces
.implements Lcom/amazon/nwstd/service/IIntentHandler;


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "UpsellFullSync"

.field private static final JOB_ID:I = 0x2711

.field private static JOB_SCHEDULED:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomerPFM:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mXfsn:Ljava/lang/String;

.field private mXmain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->JOB_SCHEDULED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mDeviceType:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mCustomerPFM:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXfsn:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXmain:Ljava/lang/String;

    return-void
.end method

.method private static buildIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UpsellFullSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->isAndroid_O_OrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const-class v1, Lcom/amazon/nwstd/service/NwstdJobService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 272
    :cond_0
    const-class v1, Lcom/amazon/nwstd/service/NwstdIntentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private static buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static isAlarmRegistered(Landroid/content/Context;)Z
    .locals 1

    const/high16 v0, 0x20000000

    .line 259
    invoke-static {p0, v0}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static launchOneShotFullSync(Landroid/content/Context;)V
    .locals 4

    .line 293
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->isAndroid_O_OrHigher()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 294
    sget-object p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const-string v0, "Skipping upsell full sync because of Android O."

    invoke-static {p0, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    sget-object v2, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const-string v3, "One shot full sync starting now ..."

    invoke-static {v2, v1, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static registerAlarm(Landroid/content/Context;JJ)V
    .locals 8

    .line 232
    invoke-static {p0}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->unregisterAlarm(Landroid/content/Context;)V

    .line 237
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full sync will be scheduled every triggerAtMS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " intervalMS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "alarm"

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v3, v2, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x3

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private reportFullSyncTimer(J)V
    .locals 6

    .line 139
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "NewsstandCEFullSyncTimer"

    const-string v2, "CEIntentDuration"

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    return-void
.end method

.method private runFullSync(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v1, p0

    .line 151
    invoke-static/range {p1 .. p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const-string v2, "CEIntentFailure"

    const/4 v3, 0x4

    const-string v4, "NewsstandCEFullSync"

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const-string v5, "Full sync scheduling is disabled as user is not registered yet"

    invoke-static {v0, v3, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const-string v5, "Running full sync"

    invoke-static {v0, v3, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/storage/CachedKVStorage;->getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;

    move-result-object v0

    const-string/jumbo v5, "upsell.sync.event.timestamp"

    .line 163
    invoke-virtual {v0, v5}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    if-eqz v6, :cond_1

    .line 165
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_1

    .line 166
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v14

    sget-object v17, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v18, v7, v9

    const-string v15, "NewsstandCEFullSyncTimer"

    const-string v16, "CEFullSyncIntentInterval"

    invoke-virtual/range {v14 .. v19}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 169
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/amazon/nwstd/storage/KVStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v5, "upsell.sync.timestamp"

    .line 173
    invoke-virtual {v0, v5}, Lcom/amazon/nwstd/storage/KVStorage;->getValueAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 177
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v9

    sget-object v12, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v10, "NewsstandCEFullSyncTimer"

    const-string v11, "CEFullSyncIntentAge"

    move-wide v13, v5

    invoke-virtual/range {v9 .. v14}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    const-wide/32 v7, 0x5265c00

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    .line 182
    sget-object v0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const-string v2, "Full sync is ignored as it was run recently"

    invoke-static {v0, v3, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "CEIntentIgnored"

    invoke-virtual {v0, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->acquire()Lcom/amazon/nwstd/resources/DynamicResourcesController;

    move-result-object v5

    .line 192
    iget-object v0, v1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mCustomerPFM:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getCEResourcesEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mDeviceType:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXfsn:Ljava/lang/String;

    iget-object v10, v1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXmain:Ljava/lang/String;

    iget-object v11, v1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mCustomerPFM:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mCustomerPFM:Ljava/lang/String;

    invoke-static {v12}, Lcom/amazon/nwstd/service/upsell/UpsellStoreURLBuilder;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x0

    new-array v13, v0, [Ljava/lang/String;

    invoke-static/range {v5 .. v13}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->createInstance(Lcom/amazon/nwstd/resources/DynamicResourcesController;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 195
    sget-object v6, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;->FULL_SYNC:Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;

    invoke-virtual {v5, v6}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;->sync(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$Target;)Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$SyncResult;

    move-result-object v5

    .line 196
    sget-object v6, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full sync status code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    sget-object v3, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler$1;->$SwitchMap$com$amazon$nwstd$upsell$fetcher$UpsellDataFetcher$SyncResult:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    .line 208
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "CEIntentSuccess"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "CEIntentIgnoredOffline"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 214
    :try_start_1
    sget-object v3, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const/16 v5, 0x10

    const-string v6, "Failed to fetch upsell resources"

    invoke-static {v3, v5, v6, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_6
    :goto_0
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    return-void

    :goto_1
    invoke-static {}, Lcom/amazon/nwstd/resources/DynamicResourcesController;->release()V

    .line 219
    throw v0
.end method

.method public static unregisterAlarm(Landroid/content/Context;)V
    .locals 2

    const-string v0, "alarm"

    .line 247
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/high16 v1, 0x8000000

    .line 248
    invoke-static {p0, v1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    .line 250
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string v0, "UpsellFullSync"

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpsellFullSync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    .line 86
    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 91
    :cond_1
    new-instance v2, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;

    invoke-direct {v2, p1}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v2}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->preloadReaderData()Z

    move-result v2

    const-string v3, "CEIntentFailure"

    const/16 v4, 0x8

    const-string v5, "NewsstandCEFullSync"

    if-nez v2, :cond_2

    .line 94
    sget-object p1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const-string p2, "failed to load tokens, sync is aborted"

    invoke-static {p1, v4, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v5, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->reportFullSyncTimer(J)V

    return-void

    .line 100
    :cond_2
    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    .line 101
    invoke-interface {p2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getPFM()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mCustomerPFM:Ljava/lang/String;

    .line 103
    invoke-static {v2}, Lcom/amazon/nwstd/utils/UpsellServiceUtils;->isSupportedPFMUpsell(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 104
    sget-object p1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const/4 p2, 0x4

    const-string v2, "Customer does not belong to the domains supported for Upsell, sync aborted"

    invoke-static {p1, p2, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "IgnoreSyncBasedOnPfm"

    invoke-virtual {p1, v5, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->reportFullSyncTimer(J)V

    return-void

    .line 109
    :cond_3
    invoke-interface {p2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mDeviceType:Ljava/lang/String;

    .line 110
    invoke-interface {p2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getCookie()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXfsn:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_fortate_identity:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p2, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXmain:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_4
    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_DEVICE_PFM_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p2, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXmain:Ljava/lang/String;

    .line 117
    :goto_0
    iget-object p2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXfsn:Ljava/lang/String;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mDeviceType:Ljava/lang/String;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mCustomerPFM:Ljava/lang/String;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 125
    :cond_5
    :try_start_0
    iget-object p2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXfsn:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mXmain:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->mCustomerPFM:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2, v2, v3, v4}, Lcom/amazon/nwstd/upsell/UpsellCampaignDeclinedHandler;->sendExistingCampaignIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 127
    sget-object v2, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const/16 v3, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to notify store on library banner declined "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v3, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    :goto_1
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->runFullSync(Landroid/content/Context;)V

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->reportFullSyncTimer(J)V

    return-void

    .line 118
    :cond_6
    :goto_2
    sget-object p1, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->TAG:Ljava/lang/String;

    const-string p2, "FULL_SYNC_FAILED due to DeviceType or mXfsn is null/empty"

    invoke-static {p1, v4, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v5, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->reportFullSyncTimer(J)V

    return-void
.end method
