.class public final Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityMonitorImpl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectivityMonitorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectivityMonitorImpl.kt\ncom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl\n*L\n1#1,98:1\n*E\n"
.end annotation


# instance fields
.field private final connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

.field private final connectivityUtils:Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

.field private final context:Landroid/content/Context;

.field private isMonitorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private wasConnectedToAnyNetwork:Z

.field private wasConnectedToCellular:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;-><init>(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;-><init>(Landroid/content/Context;Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 30
    new-instance p2, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

    invoke-direct {p2, p1}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;-><init>(Landroid/content/Context;Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityBroadcaster"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityUtils:Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

    iput-object p3, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->isMonitorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 18
    new-instance p2, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

    invoke-direct {p2, p1}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;-><init>(Landroid/content/Context;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 21
    new-instance p3, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    const/4 p4, 0x3

    const/4 p5, 0x0

    invoke-direct {p3, p5, p5, p4, p5}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;-><init>(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;-><init>(Landroid/content/Context;Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;)V

    return-void
.end method

.method private final checkAllNetworkChange()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityUtils:Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

    invoke-virtual {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->isConnectedToAnyNetwork()Z

    move-result v0

    .line 79
    iget-boolean v1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToAnyNetwork:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 80
    iput-boolean v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToAnyNetwork:Z

    .line 81
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-virtual {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->onConnectedToAnyNetwork()V

    goto :goto_0

    .line 82
    :cond_0
    iget-boolean v1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToAnyNetwork:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 83
    iput-boolean v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToAnyNetwork:Z

    .line 84
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-virtual {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->onDisconnectedFromAnyNetwork()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final checkCellularChange()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityUtils:Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

    invoke-virtual {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->isConnectedToCellular()Z

    move-result v0

    .line 90
    iget-boolean v1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToCellular:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 91
    iput-boolean v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToCellular:Z

    .line 92
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-virtual {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->onConnectedToCellular()V

    goto :goto_0

    .line 93
    :cond_0
    iget-boolean v1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToCellular:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 94
    iput-boolean v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToCellular:Z

    .line 95
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-virtual {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->onDisconnectedFromCellular()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final startMonitoring()V
    .locals 3

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->isMonitorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityUtils:Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

    invoke-virtual {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->isConnectedToAnyNetwork()Z

    move-result v0

    iput-boolean v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToAnyNetwork:Z

    .line 67
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityUtils:Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;

    invoke-virtual {v0}, Lcom/audible/playersdk/common/connectivity/ConnectivityUtils;->isConnectedToCellular()Z

    move-result v0

    iput-boolean v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->wasConnectedToCellular:Z

    :cond_0
    return-void
.end method

.method private final stopMonitoring()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->isMonitorEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_3

    return-void

    :cond_3
    const-string p2, "android.net.wifi.STATE_CHANGE"

    .line 53
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 54
    :cond_4
    invoke-direct {p0}, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->checkAllNetworkChange()V

    .line 55
    invoke-direct {p0}, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->checkCellularChange()V

    :cond_5
    return-void
.end method

.method public register(Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;)V
    .locals 1

    const-string v0, "responder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-virtual {v0, p1}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->registerResponder(Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;)V

    .line 35
    iget-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-virtual {p1}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->getRegisteredRespondersSize()I

    move-result p1

    if-lez p1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->startMonitoring()V

    :cond_0
    return-void
.end method

.method public unregister(Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;)V
    .locals 1

    const-string v0, "responder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-virtual {v0, p1}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->unregisterResponder(Lcom/audible/playersdk/common/connectivity/ConnectivityResponder;)V

    .line 42
    iget-object p1, p0, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->connectivityBroadcaster:Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;

    invoke-virtual {p1}, Lcom/audible/playersdk/common/connectivity/ConnectivityBroadcaster;->getRegisteredRespondersSize()I

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/audible/playersdk/common/connectivity/ConnectivityMonitorImpl;->stopMonitoring()V

    :cond_0
    return-void
.end method
