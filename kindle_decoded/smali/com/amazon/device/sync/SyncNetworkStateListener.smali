.class Lcom/amazon/device/sync/SyncNetworkStateListener;
.super Lcom/amazon/device/sync/SyncBroadcastReceiver;
.source "SyncNetworkStateListener.java"


# instance fields
.field private mLastNetworkStateChanged:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncBroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/amazon/device/sync/SyncNetworkStateListener;->mLastNetworkStateChanged:J

    return-void
.end method


# virtual methods
.method getLastNetworkStateChanged()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/amazon/device/sync/SyncNetworkStateListener;->mLastNetworkStateChanged:J

    return-wide v0
.end method

.method public handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/device/sync/SyncNetworkStateListener;->mLastNetworkStateChanged:J

    .line 16
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/amazon/device/sync/Synchronizer;->onNetworkChanged()V

    return-void
.end method
