.class public final Lcom/audible/mobile/player/identity/AccountRemovedBroadcastReceiver;
.super Lcom/audible/mobile/player/identity/BaseLocalBroadcastReceiverRegistrationSupport;
.source "AccountRemovedBroadcastReceiver.java"


# instance fields
.field private final player:Lcom/audible/mobile/player/Player;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/player/Player;)V
    .locals 1

    const-string v0, "com.audible.mobile.identity.account.removed"

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/player/identity/BaseLocalBroadcastReceiverRegistrationSupport;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/audible/mobile/player/identity/AccountRemovedBroadcastReceiver;->player:Lcom/audible/mobile/player/Player;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/audible/mobile/player/identity/AccountRemovedBroadcastReceiver;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->stop()V

    .line 26
    iget-object p1, p0, Lcom/audible/mobile/player/identity/AccountRemovedBroadcastReceiver;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->reset()V

    return-void
.end method
