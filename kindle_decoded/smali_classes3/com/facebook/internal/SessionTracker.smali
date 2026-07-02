.class public Lcom/facebook/internal/SessionTracker;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/SessionTracker$CallbackWrapper;,
        Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final callback:Lcom/facebook/Session$StatusCallback;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private session:Lcom/facebook/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;)V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;Lcom/facebook/Session;Z)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    .line 73
    new-instance v0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/facebook/internal/SessionTracker$CallbackWrapper;-><init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    .line 74
    iput-object p3, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    .line 75
    new-instance p2, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/internal/SessionTracker$1;)V

    iput-object p2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    .line 76
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-eqz p4, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->startTracking()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session$StatusCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    return-object p0
.end method

.method private addBroadcastReceiver()V
    .locals 3

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public getOpenSession()Lcom/facebook/Session;
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Lcom/facebook/Session;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isTracking()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    return v0
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 2

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-eqz p1, :cond_3

    .line 116
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    .line 118
    invoke-direct {p0}, Lcom/facebook/internal/SessionTracker;->addBroadcastReceiver()V

    .line 119
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_2

    .line 127
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 138
    :goto_0
    iput-object p1, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    .line 139
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public startTracking()V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;

    if-nez v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/facebook/internal/SessionTracker;->addBroadcastReceiver()V

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    :cond_2
    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 165
    iget-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/internal/SessionTracker;->broadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/internal/SessionTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/facebook/internal/SessionTracker;->isTracking:Z

    return-void
.end method
