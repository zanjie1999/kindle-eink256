.class Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;
.super Ljava/lang/Object;
.source "WakeUpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/WakeUpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLockAcquireRequest"
.end annotation


# instance fields
.field private mNeedToAcquire:Z

.field private final mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;->mNeedToAcquire:Z

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;->mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    monitor-enter p0

    .line 35
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;->mNeedToAcquire:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;->mNeedToAcquire:Z

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall$WakeLockAcquireRequest;->mWakeLock:Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
