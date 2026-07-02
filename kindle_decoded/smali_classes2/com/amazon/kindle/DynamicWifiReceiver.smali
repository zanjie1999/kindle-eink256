.class public Lcom/amazon/kindle/DynamicWifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DynamicWifiReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/amazon/kindle/DynamicWifiReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/DynamicWifiReceiver;->TAG:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/DynamicWifiReceiver;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/DynamicWifiReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/DynamicWifiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/DynamicWifiReceiver;->handleWifiBroadCast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleWifiBroadCast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "connectivity"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object p1, Lcom/amazon/kindle/DynamicWifiReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Revoke : Wifi is not available, wait for WIFI connection to be available."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/application/ReddingApplication;->isSecureStorageUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object p1, Lcom/amazon/kindle/DynamicWifiReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Cannot perform revoke, app shutting down"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRevokeOwnershipResumer()Lcom/amazon/kindle/IRevokeOwnershipResumer;

    move-result-object p1

    .line 72
    sget-object v0, Lcom/amazon/kindle/revoke/RevokeFailureType;->NETWORK:Lcom/amazon/kindle/revoke/RevokeFailureType;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/IRevokeOwnershipResumer;->resumeRevokeRequests(Lcom/amazon/kindle/revoke/RevokeFailureType;)V

    .line 73
    new-instance p1, Lcom/amazon/android/system/IntentEvent;

    invoke-direct {p1, p2}, Lcom/amazon/android/system/IntentEvent;-><init>(Landroid/content/Intent;)V

    .line 74
    sget-object p2, Lcom/amazon/kindle/DynamicWifiReceiver;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke : Received intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/amazon/kindle/DynamicWifiReceiver$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kindle/DynamicWifiReceiver$1;-><init>(Lcom/amazon/kindle/DynamicWifiReceiver;Landroid/content/Intent;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 55
    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
