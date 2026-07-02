.class public Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;
.super Lcom/amazon/kcp/redding/AlertActivity;
.source "ConnectivityAwareAlertActivity.java"


# static fields
.field private static final CONNECTIVITY_REGAIN_RESULT_CODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/redding/AlertActivity;-><init>()V

    return-void
.end method

.method public static createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 43
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/redding/AlertActivity;->createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ConnectionError"

    .line 44
    invoke-static {p0, v0}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 48
    :cond_0
    new-instance p0, Landroid/content/ComponentName;

    const-class v0, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public onConnectivityChanged(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity$1;-><init>(Lcom/amazon/kcp/redding/ConnectivityAwareAlertActivity;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object p1, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/AlertActivity;->getAlertType()Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 37
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 56
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/AlertActivity;->getAlertType()Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 57
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
