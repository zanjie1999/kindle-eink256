.class public final Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;
.super Ljava/lang/Object;
.source "KrxCompanionMappingClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_ENCODING_HEADER_VALUE:Ljava/lang/String; = "gzip"

.field private static final INVALID_NEGATIVE_STATUS_CODE:Ljava/lang/String; = "_UNKNOWN"

.field private static final INVALID_STATUS_CODE:I = -0x1

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final X_ANDROID_SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"


# instance fields
.field private final appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private companionMappingAsinsRequested:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field

.field private final companionMappingBroadcaster:Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;

.field private final downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field private final endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private requestInProgress:Z

.field private stopRequest:Z

.field private subsequentRequestRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/pfm/endpoint/IEndpointFactory;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->stopRequest:Z

    .line 111
    iput-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->subsequentRequestRequired:Z

    .line 118
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->companionMappingAsinsRequested:Ljava/util/Set;

    .line 121
    iput-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestInProgress:Z

    .line 135
    iput-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->eventBus:Lde/greenrobot/event/EventBus;

    .line 136
    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 137
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 138
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 139
    iput-object p3, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    .line 140
    iput-object p4, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    .line 142
    new-instance p1, Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;

    invoke-direct {p1}, Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->companionMappingBroadcaster:Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;

    return-void
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 64
    sget-object v0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLjava/io/InputStream;ZJ)V
    .locals 0

    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->inputStreamReceived(ZLjava/io/InputStream;ZJ)V

    return-void
.end method

.method static synthetic access$302(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->reportCompanionMappingUpdateMetric(ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;)V

    return-void
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->reportCompanionMappingUpdateMetricWithStatusCode(ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;I)V

    return-void
.end method

.method private declared-synchronized initiateSubsequentRequestIfNecessary(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->isSubsequentRequestNecessary(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 342
    invoke-direct {p0, p2, p3}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestAllCompanionMappings(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private inputStreamReceived(ZLjava/io/InputStream;ZJ)V
    .locals 3

    .line 281
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->stopCompanionMappingNetworkTimerMetric(Z)V

    .line 282
    iget-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->stopRequest:Z

    if-eqz v0, :cond_0

    .line 283
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "HP-AppStart: Already shutdown, dropping companion mapping response"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 288
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "HP-AppStart: Problem fetching Companion Mapping data, inputStream was null"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 297
    :try_start_0
    sget-object p3, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Decompressing gzipped companion mapping response..."

    invoke-interface {p3, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 298
    new-instance p3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p3, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p3}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4, p5}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->parse(Ljava/lang/String;J)Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    move-result-object p3

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4, p5}, Lcom/audible/hushpuppy/service/relationship/parser/CompanionDataParser;->parse(Ljava/lang/String;J)Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v0, p3

    .line 305
    :goto_1
    :try_start_1
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p3

    .line 303
    :try_start_2
    sget-object v1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "HP-AppStart: IOException reading response InputStream"

    invoke-interface {v1, v2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 309
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    sget-object p3, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_SERVER_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;->setLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)V

    .line 310
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    sget-object p3, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_DEVICE_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;->setLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)V

    if-nez v0, :cond_3

    .line 313
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "HP-AppStart: Companion mappings response could not be parsed, not publishing event"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 317
    :cond_3
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/audible/mobile/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToDelete()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/audible/mobile/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 318
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p2

    sget-object p3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->CompanionMappingServiceReturnedRelationshipNull:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p2, p3, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 321
    :cond_4
    sget-object p2, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "HP-AppStart: Relationship to add = %s"

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    sget-object p2, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "HP-AppStart: Relationship to delete = %s"

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToDelete()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p4, p5}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->initiateSubsequentRequestIfNecessary(Ljava/util/List;J)V

    .line 324
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;

    invoke-direct {p3, v0, p1}, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;Z)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 325
    iget-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->companionMappingBroadcaster:Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;

    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/audible/hushpuppy/common/broadcast/CompanionMappingBroadcaster;->broadcastModifications(Landroid/content/Context;Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;)V

    goto :goto_4

    .line 305
    :goto_3
    invoke-static {p2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 306
    throw p1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 327
    sget-object p2, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "HP-AppStart: Error parsing response"

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private isSubsequentRequestNecessary(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;)Z"
        }
    .end annotation

    .line 359
    iget-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->subsequentRequestRequired:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 360
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Subsequent request deemed necessary due to the force flag being true"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1

    .line 363
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 364
    iget-object v2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->companionMappingAsinsRequested:Ljava/util/Set;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->companionMappingAsinsRequested:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 368
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Subsequent request deemed unnecessary due to all requested asins existing in previous response. Hurray!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 371
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Subsequent request deemed necessary due to asins being requested during the previous server request that was not in the previous response."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 373
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asins requested that did not exist in previous response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->companionMappingAsinsRequested:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1
.end method

.method private reportCompanionMappingUpdateMetric(ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;)V
    .locals 1

    .line 390
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->CompanionMapping:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->CompanionMappingPartial:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method private reportCompanionMappingUpdateMetricWithStatusCode(ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;I)V
    .locals 2

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "_UNKNOWN"

    .line 414
    :goto_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->CompanionMapping:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->CompanionMappingPartial:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    :goto_1
    invoke-virtual {v0, p1, p3, p2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method private requestAllCompanionMappings(J)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 202
    :goto_0
    sget-object v3, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "HP-AppStart: Companion mapping request with lastFetchServerTime = %s, full = %s"

    invoke-interface {v3, v6, v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    iget-boolean v3, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestInProgress:Z

    if-eqz v3, :cond_1

    .line 208
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "HP-AppStart: A companion mapping request is currently in progress. Dropping this request."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void

    .line 212
    :cond_1
    iget-object v3, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No network connection!. Dropping this request."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->CompanionMappingNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->userRegistered()Z

    move-result v3

    if-nez v3, :cond_3

    .line 219
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "User is not registered!. Dropping this request."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->CompanionMappingNoUser:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void

    .line 224
    :cond_3
    iget-object v3, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v3

    if-nez v3, :cond_4

    .line 226
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "HP-AppStart: Active user is null, dropping companion mapping request..."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 230
    :cond_4
    iget-object v4, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/audible/pfm/endpoint/IEndpointFactory;->getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v3

    if-nez v3, :cond_5

    .line 232
    sget-object p1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "HP-AppStart: NetworkEndpoints were null, dropping companion mapping request..."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 236
    :cond_5
    invoke-interface {v3, p1, p2}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getCompanionMappingDataPath(J)Ljava/net/URL;

    move-result-object p1

    .line 237
    sget-object p2, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HP-AppStart: Making companion mapping request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 239
    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-direct {p0, v2, p2}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->reportCompanionMappingUpdateMetric(ZLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;)V

    .line 240
    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->startCompanionMappingNetworkTimerMetric(Z)V

    .line 242
    iput-boolean v1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->subsequentRequestRequired:Z

    .line 243
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->companionMappingAsinsRequested:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 244
    iput-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestInProgress:Z

    .line 246
    sget-object p2, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    if-eqz v2, :cond_6

    sget-object v0, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->COMPANION_MAPPING:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->COMPANION_MAPPING_PARTIAL:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    :goto_1
    if-nez p1, :cond_7

    const-string v1, "<NULL!>"

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v3, "Enqueuing CM request to KRX DownloadManager."

    invoke-interface {p2, v0, v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    new-instance v0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingsRequest;

    new-instance v1, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$InputStreamResponseHandler;-><init>(Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;ZLcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient$1;)V

    iget-object v2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 249
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingsRequest;-><init>(Ljava/net/URL;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;Landroid/content/Context;)V

    .line 248
    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    return-void
.end method

.method private startCompanionMappingNetworkTimerMetric(Z)V
    .locals 1

    .line 427
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->CompanionMappingFullTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->CompanionMappingPartialTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method

.method private stopCompanionMappingNetworkTimerMetric(Z)V
    .locals 1

    .line 439
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->CompanionMappingFullTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->CompanionMappingPartialTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method

.method private userRegistered()Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public enableRequests()V
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->stopRequest:Z

    return-void
.end method

.method public declared-synchronized requestAllCompanionMappings()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 177
    :try_start_0
    iput-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->subsequentRequestRequired:Z

    const-wide/16 v0, 0x0

    .line 178
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestAllCompanionMappings(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestCompanionMappings(J)V
    .locals 0

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestAllCompanionMappings(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestCompanionMappingsForAsin(Lcom/audible/mobile/domain/Asin;J)V
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->companionMappingAsinsRequested:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-direct {p0, p2, p3}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->requestAllCompanionMappings(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopAllRequests()V
    .locals 1

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;->stopRequest:Z

    return-void
.end method
