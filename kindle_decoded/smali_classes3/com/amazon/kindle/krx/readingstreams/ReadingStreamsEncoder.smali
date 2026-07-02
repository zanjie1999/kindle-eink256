.class public Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;
.super Lcom/amazon/kindle/krx/readingstreams/BaseReadingStreamsEncoder;
.source "ReadingStreamsEncoder.java"

# interfaces
.implements Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;


# static fields
.field private static final PAYLOAD_SIZE_BOUNDARY_IN_BYTES:I = 0x1600

.field private static final READING_STREAMS_REQUESTER:Ljava/lang/String; = "ReadingStreamsRequester"

.field private static final READING_STREAMS_TOPIC:Ljava/lang/String; = "Kindle.DeviceReadingStreams"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

.field private final messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

.field private requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/BaseReadingStreamsEncoder;-><init>()V

    .line 68
    new-instance v0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$1;-><init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;

    .line 81
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getMessageEncoderCreator(Landroid/content/Context;)Lcom/amazon/kcp/readingstreams/IMessageEncoderCreator;

    move-result-object p1

    .line 82
    invoke-interface {p1, p0}, Lcom/amazon/kcp/readingstreams/IMessageEncoderCreator;->createMessageEncoder(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;)Lcom/amazon/rma/rs/encoding/MessageEncoder;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 83
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->performActionImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/dcp/messaging/DeliveryOption;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->requesterOption:Lcom/amazon/dcp/messaging/DeliveryOption;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/kindle/krx/messaging/IMessagingManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/rma/rs/encoding/MessageEncoder;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->recordShowContextInFastMetrics(Ljava/lang/String;)V

    return-void
.end method

.method private static getCurrentBookAsin()Ljava/lang/String;
    .locals 2

    .line 757
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 758
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 760
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private static getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 720
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 721
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "unable to parse"

    return-object p0
.end method

.method private static getMetadataWithAsin(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 738
    invoke-static {}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getCurrentBookAsin()Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BookAsin"

    .line 740
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p0, :cond_1

    .line 745
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 748
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getReadingStreamsContentType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/rma/rs/encoding/ContentType;
    .locals 1

    .line 684
    sget-object v0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$7;->$SwitchMap$com$amazon$kindle$krx$content$ContentType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 710
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->UNKNOWN:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    .line 707
    :pswitch_0
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->SIDELOADED:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    .line 704
    :pswitch_1
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->AUDIBLE:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    .line 701
    :pswitch_2
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->PERSONAL_LETTER:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    .line 698
    :pswitch_3
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->PDOC:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    .line 695
    :pswitch_4
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->NEWSPAPER:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    .line 692
    :pswitch_5
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->MAGAZINE:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    .line 689
    :pswitch_6
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK_SAMPLE:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    .line 686
    :pswitch_7
    sget-object p1, Lcom/amazon/rma/rs/encoding/ContentType;->EBOOK:Lcom/amazon/rma/rs/encoding/ContentType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAnnotationsSyncEnabled()Z
    .locals 1

    .line 637
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized performActionImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 294
    :try_start_0
    invoke-static {p3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getMetadataWithAsin(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 296
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 297
    monitor-exit p0

    return-void

    .line 300
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "performAction for context %s, actionID %s, metadata %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    .line 302
    invoke-static {p3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 301
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    .line 306
    iget-object v4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v4, p1, p2, v5, v6}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 310
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 312
    :try_start_2
    sget-object v5, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v6, "Exception calling performAction for context %s, actionID %s, metadata %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 313
    invoke-static {p3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 312
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private recordShowContextInFastMetrics(Ljava/lang/String;)V
    .locals 3

    .line 558
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_2

    .line 560
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->SHOW_CONTEXT:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->SHOW_CONTEXT:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    .line 561
    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 560
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string p1, "No context"

    :cond_1
    const-string v2, "context"

    .line 563
    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 568
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_2
    return-void
.end method

.method private sendOdotMessageIfCriteriaMet()V
    .locals 2

    .line 643
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getSizeInBytes()I

    move-result v0

    const/16 v1, 0x1600

    if-ge v0, v1, :cond_0

    return-void

    .line 649
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;

    invoke-direct {v1, p0, p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$6;-><init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private declared-synchronized toByteArray(Z)[B
    .locals 3

    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->toByteArray(JZ)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 589
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v1, "Exception calling toByteArray: "

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 590
    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized consumeContentPoint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->consumeContentPoint(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized consumeContentPoint(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 95
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "consumeContentPoint for context %s, pointType %s, position %d"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    .line 100
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 99
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v10, p4

    invoke-interface/range {v4 .. v10}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-interface/range {v4 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p4

    .line 110
    :try_start_2
    sget-object v4, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v5, "Exception calling consumeContentPoint for context %s, pointType %s, position %d: "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 111
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    .line 110
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized consumeContentSpan(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 117
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    monitor-enter p0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 123
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 124
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "consumeContentSpan for context %s, spanType %s, startPosition %d, endPosition %d: "

    new-array v3, v12, [Ljava/lang/Object;

    aput-object p1, v3, v14

    aput-object p2, v3, v13

    .line 129
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    .line 128
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_3

    const-string v2, "verticalScrollState"

    .line 135
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "enabled"

    if-eq v2, v3, :cond_2

    const-string v2, "isScrolledOverSpan"

    .line 136
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "true"

    if-eq v2, v3, :cond_4

    .line 137
    :cond_2
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    const-string v3, "Reading"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    invoke-interface/range {v2 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    const-string v3, "Reading"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 142
    :cond_4
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V

    if-eqz v0, :cond_7

    const-string v2, "verticalScrollState"

    .line 145
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "enabled"

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    const-string v3, "isScrolledOverSpan"

    .line 147
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "true"

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 149
    :goto_2
    new-instance v4, Lcom/amazon/android/docviewer/IntPositionRange;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v9, p3

    move/from16 v15, p4

    :try_start_2
    invoke-direct {v4, v9, v15}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->sendMetrics(JLcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;ZZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v9, p3

    move/from16 v15, p4

    .line 158
    :goto_3
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling consumeContentSpan for context %s, spanType %s, startPosition %d, endPosition %d: "

    new-array v4, v12, [Ljava/lang/Object;

    aput-object p1, v4, v14

    aput-object p2, v4, v13

    .line 159
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 158
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public getMessageSizeThresholdInBytes()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x1600

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSizeInBytes()I
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-interface {v0}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->getSizeInBytes()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasEvents()Z
    .locals 1

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-interface {v0}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->hasEvents()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideContext(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hideContext(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 219
    monitor-exit p0

    return-void

    .line 222
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "hideContext for context %s, metadata %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 224
    invoke-static {p2}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 223
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    .line 228
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->hideContext(Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->hideContext(Ljava/lang/String;J)V

    .line 232
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 234
    :try_start_2
    sget-object v4, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v5, "Exception calling hideContext for context %s, metadata %s: "

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 235
    invoke-static {p2}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    .line 234
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invokeExplicitMessageProcessing(Z)V
    .locals 2

    monitor-enter p0

    .line 599
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 600
    monitor-exit p0

    return-void

    .line 603
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    .line 607
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    .line 608
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 610
    monitor-exit p0

    return-void

    .line 613
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->hasEvents()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 615
    monitor-exit p0

    return-void

    .line 620
    :cond_2
    :try_start_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->toByteArray(Z)[B

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-interface {v1, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->clear(Z)V

    .line 624
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$5;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$5;-><init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;[B)V

    invoke-interface {p1, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openContent(Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8

    monitor-enter p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 180
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->openContent(Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openContent(Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v11, 0x5

    .line 186
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 187
    monitor-exit p0

    return-void

    .line 190
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "openContent for asin %s, embeddedID %s, srl %d, erl %d, bookLengh %d: "

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p2, v2, v16

    aput-object p3, v2, v15

    .line 193
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    .line 191
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p7, :cond_2

    .line 197
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getReadingStreamsContentType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/rma/rs/encoding/ContentType;

    move-result-object v3

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    const/4 v12, 0x5

    move-object/from16 v11, p7

    .line 197
    :try_start_2
    invoke-interface/range {v2 .. v11}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJLjava/util/Map;)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x5

    .line 200
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getReadingStreamsContentType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/rma/rs/encoding/ContentType;

    move-result-object v3

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 200
    invoke-interface/range {v2 .. v10}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJ)V

    .line 203
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v12, 0x5

    .line 205
    :goto_1
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling openContent for asin %s, embeddedID %s, srl %d, erl %d, bookLengh %d: "

    new-array v4, v12, [Ljava/lang/Object;

    aput-object p2, v4, v16

    aput-object p3, v4, v15

    .line 206
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 205
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 241
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openContext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 248
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "openContext for openerContext %s, openedContext %s, metadata %s "

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    .line 253
    invoke-static {p3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 252
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    .line 257
    iget-object v5, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v6, p1

    move-object v7, p2

    move-object v10, p3

    invoke-interface/range {v5 .. v10}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v4, p1, p2, v5, v6}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->openContext(Ljava/lang/String;Ljava/lang/String;J)V

    .line 262
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 264
    :try_start_2
    sget-object v5, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v6, "Exception calling openContext for openerContext %s and openedContext %s and metadata %s: "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 265
    invoke-static {p3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 264
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public performAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 280
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$2;-><init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 288
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->performActionImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized performContentAction(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 384
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performContentAction(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x5

    .line 391
    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getMetadataWithAsin(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 394
    monitor-exit p0

    return-void

    .line 397
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "performContentAction for context %s, actionID %s, startPosition %d, endPosition %d, metadata %s"

    new-array v2, v15, [Ljava/lang/Object;

    aput-object p1, v2, v14

    aput-object p2, v2, v13

    .line 399
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static/range {v16 .. v16}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 398
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz v16, :cond_2

    .line 403
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, v16

    .line 403
    invoke-interface/range {v2 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 406
    invoke-interface/range {v2 .. v8}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 409
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v16, p5

    .line 411
    :goto_1
    :try_start_3
    sget-object v2, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling performContentAction for context %s, actionID %s, startPosition %d, endPosition %d, metadata %s"

    new-array v4, v15, [Ljava/lang/Object;

    aput-object p1, v4, v14

    aput-object p2, v4, v13

    .line 412
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static/range {v16 .. v16}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 411
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public publishReadingStreamsMessage([B)V
    .locals 2

    .line 319
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$3;-><init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;[B)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public declared-synchronized recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V
    .locals 7

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 353
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordAuxContentAvailability(Ljava/lang/String;ZZZZLjava/util/Map;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x4

    .line 360
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "recordAuxContentAvailability for contentType %s, supportsContent %b, hasData %b, isEnabled %b"

    new-array v2, v15, [Ljava/lang/Object;

    aput-object p1, v2, v14

    .line 365
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v11

    .line 364
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p6, :cond_2

    .line 368
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    .line 368
    invoke-interface/range {v2 .. v10}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZJLjava/util/Map;)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 371
    invoke-interface/range {v2 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZJ)V

    .line 374
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 376
    sget-object v2, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/Object;

    aput-object p1, v3, v14

    .line 377
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    const-string v4, "Exception calling recordAuxContentAvailability for contentType %s, supportsContent %b, hasData %b, isEnabled %b"

    .line 376
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public declared-synchronized recordMetadata(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 335
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 336
    monitor-exit p0

    return-void

    .line 339
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "recordMetadata for context %s, metadata %s"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 340
    invoke-static {p2}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3, p1, p2, v4, v5}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;J)V

    .line 344
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 346
    :try_start_2
    sget-object v4, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v5, "Exception calling recordMetadata for context %s, metadata %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->getLogForMetadata(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 452
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)V
    .locals 15

    move-object v1, p0

    monitor-enter p0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    .line 459
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 460
    monitor-exit p0

    return-void

    .line 463
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "recordSetting for context %s, settingID %s, state %d, isChange %s"

    new-array v2, v14, [Ljava/lang/Object;

    aput-object p1, v2, v13

    aput-object p2, v2, v12

    .line 465
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    .line 464
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p5, :cond_2

    .line 469
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    .line 469
    invoke-interface/range {v2 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;IZJLjava/util/Map;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 472
    invoke-interface/range {v2 .. v8}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;IZJ)V

    .line 475
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 477
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling recordSetting for context %s, settingID %s, state %d, isChange %s"

    new-array v4, v14, [Ljava/lang/Object;

    aput-object p1, v4, v13

    aput-object p2, v4, v12

    .line 478
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v10

    .line 477
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 485
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 15

    move-object v1, p0

    monitor-enter p0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    .line 492
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 493
    monitor-exit p0

    return-void

    .line 496
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "recordSetting for context %s, settingID %s, state %s, isChange %s"

    new-array v2, v14, [Ljava/lang/Object;

    aput-object p1, v2, v13

    aput-object p2, v2, v12

    aput-object p3, v2, v11

    .line 498
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    .line 497
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p5, :cond_2

    .line 502
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    .line 502
    invoke-interface/range {v2 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    .line 505
    invoke-interface/range {v2 .. v8}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 508
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 510
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling recordSetting for context %s, settingID %s, state %s, isChange %s"

    new-array v4, v14, [Ljava/lang/Object;

    aput-object p1, v4, v13

    aput-object p2, v4, v12

    aput-object p3, v4, v11

    .line 511
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v10

    .line 510
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 419
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V
    .locals 15

    move-object v1, p0

    monitor-enter p0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    .line 426
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->isAnnotationsSyncEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 427
    monitor-exit p0

    return-void

    .line 430
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "recordSetting for context %s, settingID %s, state %s, isChange %s"

    new-array v2, v14, [Ljava/lang/Object;

    aput-object p1, v2, v13

    aput-object p2, v2, v12

    .line 432
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    .line 431
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    if-eqz p5, :cond_2

    .line 436
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    .line 436
    invoke-interface/range {v2 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJLjava/util/Map;)V

    goto :goto_0

    .line 439
    :cond_2
    iget-object v2, v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->messageEncoder:Lcom/amazon/rma/rs/encoding/MessageEncoder;

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 439
    invoke-interface/range {v2 .. v8}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJ)V

    .line 442
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->sendOdotMessageIfCriteriaMet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 444
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling recordSetting for context %s, settingID %s, state %s, isChange %s"

    new-array v4, v14, [Ljava/lang/Object;

    aput-object p1, v4, v13

    aput-object p2, v4, v12

    .line 445
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v10

    .line 444
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showContext(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 517
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showContext(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    monitor-enter p0

    .line 522
    :try_start_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;-><init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toByteArray()[B
    .locals 1

    monitor-enter p0

    .line 574
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->toByteArray(Z)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
