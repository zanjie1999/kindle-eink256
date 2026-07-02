.class public Lcom/amazon/sitb/android/broadcasts/ConnectivityChangedReceiver;
.super Ljava/lang/Object;
.source "ConnectivityChangedReceiver.java"

# interfaces
.implements Lcom/amazon/kindle/krx/system/IBroadcastListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private connectivityChanged(Landroid/content/Intent;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 8

    const-string v0, "networkInfo"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/NetworkInfo;

    const-string/jumbo v0, "otherNetwork"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    const-string v1, "isFailover"

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v1, "reason"

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "extraInfo"

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "noConnectivity"

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 51
    new-instance v0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;

    xor-int/lit8 v5, p1, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;-><init>(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public onReceiveIntent(Landroid/content/Intent;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getInstance()Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/UpsellApplicationPlugin;->getApplicationContext()Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/amazon/sitb/android/plugin/application/ApplicationPluginContext;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/amazon/sitb/android/broadcasts/ConnectivityChangedReceiver;->connectivityChanged(Landroid/content/Intent;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    :cond_0
    return-void
.end method
