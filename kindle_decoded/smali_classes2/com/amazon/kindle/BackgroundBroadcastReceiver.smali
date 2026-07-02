.class public abstract Lcom/amazon/kindle/BackgroundBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 23
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;-><init>(Lcom/amazon/kindle/BackgroundBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public abstract onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
.end method
