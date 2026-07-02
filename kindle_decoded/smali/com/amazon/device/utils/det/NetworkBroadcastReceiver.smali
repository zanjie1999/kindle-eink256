.class public Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkBroadcastReceiver.java"


# instance fields
.field private isRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mNetworkListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/utils/det/NetworkListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->isRegistered:Z

    .line 31
    iput-object p1, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private tryRegister()V
    .locals 3

    .line 93
    iget-boolean v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->isRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    iput-boolean v1, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->isRegistered:Z

    :cond_1
    return-void
.end method

.method private tryUnregister()V
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->isRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->isRegistered:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 38
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo p1, "noConnectivity"

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 41
    monitor-exit p0

    return-void

    .line 43
    :cond_1
    :try_start_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object p2, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/device/utils/det/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/det/NetworkManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/device/utils/det/NetworkManager;->isWifiConnected()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 46
    iget-object p2, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/utils/det/NetworkListener;

    .line 47
    invoke-interface {v0}, Lcom/amazon/device/utils/det/NetworkListener;->onWifiAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_3
    iget-object p2, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/device/utils/det/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/det/NetworkManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/device/utils/det/NetworkManager;->isEthernetConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 53
    iget-object p2, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/utils/det/NetworkListener;

    .line 54
    invoke-interface {v0}, Lcom/amazon/device/utils/det/NetworkListener;->onEthernetAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_5
    iget-object p2, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/device/utils/det/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/det/NetworkManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/device/utils/det/NetworkManager;->isWanConnected()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 59
    iget-object p2, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/utils/det/NetworkListener;

    .line 60
    invoke-interface {v0}, Lcom/amazon/device/utils/det/NetworkListener;->onWanAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/device/utils/det/NetworkListener;

    .line 67
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 70
    :cond_8
    invoke-direct {p0}, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->tryUnregister()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerNetworkListener(Lcom/amazon/device/utils/det/NetworkListener;)V
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->tryRegister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterNetworkListener(Lcom/amazon/device/utils/det/NetworkListener;)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->mNetworkListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/utils/det/NetworkBroadcastReceiver;->tryUnregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
