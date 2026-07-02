.class public final Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;
.super Ljava/lang/Object;
.source "AssetDownloadRequestEventEmitter.kt"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;

.field private static final downloadingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;

    invoke-direct {v0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->INSTANCE:Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;

    .line 20
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 21
    const-class v1, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->downloadingRequests:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 0

    return-void
.end method

.method public reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 3

    .line 25
    instance-of v0, p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 30
    :cond_1
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x4

    const-string v2, "asset"

    if-eq p2, v1, :cond_5

    const/4 v1, 0x5

    if-eq p2, v1, :cond_3

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    goto/16 :goto_1

    .line 54
    :cond_2
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->downloadingRequests:Ljava/util/Set;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_3
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->downloadingRequests:Ljava/util/Set;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p1, p2, :cond_4

    .line 46
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance p2, Lcom/amazon/kindle/event/AssetDownloadEvent;

    sget-object v1, Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;->MAIN_CONTENT_DOWNLOADED:Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-direct {p2, v1, v2, v0}, Lcom/amazon/kindle/event/AssetDownloadEvent;-><init>(Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IBookAsset;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    .line 48
    :cond_4
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance p2, Lcom/amazon/kindle/event/AssetDownloadEvent;

    sget-object v1, Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;->EXTRA_ASSET_DOWNLOADED:Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-direct {p2, v1, v2, v0}, Lcom/amazon/kindle/event/AssetDownloadEvent;-><init>(Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IBookAsset;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 50
    :goto_0
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ASSET_DOWNLOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 51
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 50
    invoke-static {p1, p2, v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Ljava/util/List;ZJ)V

    goto :goto_1

    .line 35
    :cond_5
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->downloadingRequests:Ljava/util/Set;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 39
    :cond_6
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->downloadingRequests:Ljava/util/Set;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ASSET_DOWNLOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 40
    invoke-static {p1, p2, v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Ljava/util/List;ZJ)V

    :goto_1
    return-void
.end method

.method public setMaxProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
