.class public Lcom/amazon/kindle/todo/AssetOwnershipSMDPollBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AssetOwnershipSMDPollBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/todo/AssetOwnershipSMDPollBroadcastReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/AssetOwnershipSMDPollBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sync(Landroid/content/Context;)Z
    .locals 2

    .line 68
    :try_start_0
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->SMD_POLL_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 69
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 72
    sget-object v0, Lcom/amazon/kindle/todo/AssetOwnershipSMDPollBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Unable to make a sync call"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 39
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v3, "intent(%s)"

    .line 40
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    :cond_0
    invoke-static {p2}, Lcom/amazon/dcp/messaging/Message;->constructMessageFromIntent(Landroid/content/Intent;)Lcom/amazon/dcp/messaging/Message;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    sget-object p1, Lcom/amazon/kindle/todo/AssetOwnershipSMDPollBroadcastReceiver;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "This intent (%s) could not be converted to a Message"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v0}, Lcom/amazon/dcp/messaging/Message;->getTopic()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    const-string/jumbo v1, "topic(%s)"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/todo/AssetOwnershipSMDPollBroadcastReceiver;->sync(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 56
    new-instance p2, Lcom/amazon/dcp/messaging/Response;

    invoke-virtual {v0}, Lcom/amazon/dcp/messaging/Message;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    const/16 v2, 0xa

    const-string v3, "Failed to handle the message"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/amazon/dcp/messaging/Response;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 58
    invoke-static {p1, p2}, Lcom/amazon/dcp/messaging/MessagingHelper;->respondTo(Landroid/content/Context;Lcom/amazon/dcp/messaging/Response;)V

    return-void

    .line 62
    :cond_3
    new-instance p2, Lcom/amazon/dcp/messaging/Response;

    invoke-virtual {v0}, Lcom/amazon/dcp/messaging/Message;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Done"

    invoke-direct {p2, v0, v2, v1}, Lcom/amazon/dcp/messaging/Response;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    invoke-static {p1, p2}, Lcom/amazon/dcp/messaging/MessagingHelper;->respondTo(Landroid/content/Context;Lcom/amazon/dcp/messaging/Response;)V

    return-void
.end method
