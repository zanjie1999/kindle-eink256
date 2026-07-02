.class public final Lcom/audible/hushpuppy/service/network/common/SampleSyncFileDownloadClient;
.super Ljava/lang/Object;
.source "SampleSyncFileDownloadClient.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final TIMEOUT:J = 0x3e8L


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/network/common/SampleSyncFileDownloadClient;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/network/common/SampleSyncFileDownloadClient;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    const-string v1, "downloadManager can\'t be null."

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    iput-object v0, p0, Lcom/audible/hushpuppy/service/network/common/SampleSyncFileDownloadClient;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    const-string v0, "eventBus can\'t be null."

    .line 62
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lde/greenrobot/event/EventBus;

    iput-object p2, p0, Lcom/audible/hushpuppy/service/network/common/SampleSyncFileDownloadClient;->eventBus:Lde/greenrobot/event/EventBus;

    .line 63
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context can\'t be null."

    invoke-static {p1, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/audible/hushpuppy/service/network/common/SampleSyncFileDownloadClient;->context:Landroid/content/Context;

    return-void
.end method
