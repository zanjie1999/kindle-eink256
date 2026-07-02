.class public final Lcom/audible/mobile/identity/RebroadcastingBroadcastReceiver;
.super Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;
.source "RebroadcastingBroadcastReceiver.java"


# instance fields
.field private final internalAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 28
    iput-object p3, p0, Lcom/audible/mobile/identity/RebroadcastingBroadcastReceiver;->internalAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 34
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 35
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/audible/mobile/identity/RebroadcastingBroadcastReceiver;->internalAction:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
