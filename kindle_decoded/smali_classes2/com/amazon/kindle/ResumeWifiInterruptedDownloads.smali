.class public Lcom/amazon/kindle/ResumeWifiInterruptedDownloads;
.super Landroid/content/BroadcastReceiver;
.source "ResumeWifiInterruptedDownloads.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/ResumeWifiInterruptedDownloads;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ResumeWifiInterruptedDownloads;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setState(I)V
    .locals 3

    .line 47
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState with componentState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBroadcastReceiverHelper()Lcom/amazon/android/util/BroadcastReceiverHelper;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/ResumeWifiInterruptedDownloads;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p0, v2}, Lcom/amazon/android/util/BroadcastReceiverHelper;->setComponentEnabledSetting(Ljava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 30
    new-instance p2, Lcom/amazon/kindle/network/WirelessUtils;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadResumer()Lcom/amazon/kindle/IDownloadResumer;

    move-result-object p2

    .line 36
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v1, "ftue_sync_complete"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncType;->SYNCMETADATA_ONLY:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v2, v3, v1, v1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    .line 40
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/IDownloadResumer;->resumeDownloads()V

    .line 41
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->UPLOAD_JOURNAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {p2, v0, v1, v1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_1
    return-void
.end method
