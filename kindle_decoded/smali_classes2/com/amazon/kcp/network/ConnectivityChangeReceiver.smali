.class public Lcom/amazon/kcp/network/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# instance fields
.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/network/ConnectivityChangeReceiver;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/network/ConnectivityChangeReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadResumer()Lcom/amazon/kindle/IDownloadResumer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/IDownloadResumer;->resumeDownloads()V

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 42
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/network/ConnectivityChangeReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance p2, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;

    invoke-direct {p2, v0, v1}, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;-><init>(ZZ)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
