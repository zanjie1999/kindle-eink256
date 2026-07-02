.class public Lcom/amazon/kindle/map/MAPAccountRemovedReceiver;
.super Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;
.source "MAPAccountRemovedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final backwardsCompatibleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 11
    new-instance p2, Lcom/amazon/kindle/map/MAPAccountStatusChangedHandler;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/map/MAPAccountStatusChangedHandler;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p2}, Lcom/amazon/kindle/map/MAPAccountStatusChangedHandler;->onAccountRemoved()V

    return-void
.end method
