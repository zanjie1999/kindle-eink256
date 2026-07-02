.class public abstract Lcom/amazon/android/util/ToggleableBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToggleableBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final filter:Landroid/content/IntentFilter;

.field protected isRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->context:Landroid/content/Context;

    .line 28
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->isRegistered:Z

    return-void
.end method


# virtual methods
.method protected abstract getBroadcastPermission()Ljava/lang/String;
.end method

.method protected abstract getReceiverLooper()Landroid/os/Looper;
.end method

.method public startReceiving()V
    .locals 4

    .line 46
    iget-boolean v0, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->isRegistered:Z

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->getReceiverLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    iget-object v1, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->filter:Landroid/content/IntentFilter;

    .line 49
    invoke-virtual {p0}, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->getBroadcastPermission()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->isRegistered:Z

    :cond_0
    return-void
.end method

.method public stopReceiving()V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->isRegistered:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/amazon/android/util/ToggleableBroadcastReceiver;->isRegistered:Z

    :cond_0
    return-void
.end method
