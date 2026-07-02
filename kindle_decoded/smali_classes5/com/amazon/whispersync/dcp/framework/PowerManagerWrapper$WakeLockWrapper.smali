.class public Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;
.super Ljava/lang/Object;
.source "PowerManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeLockWrapper"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakelockDebugService"


# instance fields
.field private mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mInner:Landroid/os/PowerManager$WakeLock;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInner:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method private createWakeUpCall()Lcom/amazon/whispersync/dcp/framework/WakeUpCall;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;-><init>(Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;)V

    .line 92
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This function is not available if PowerManagerWrapper was not injected"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public acquire(J)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public isHeld()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method public sleep(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->createWakeUpCall()Lcom/amazon/whispersync/dcp/framework/WakeUpCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->sleep(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public sleepWithGuaranteedWakeUp(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->createWakeUpCall()Lcom/amazon/whispersync/dcp/framework/WakeUpCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/WakeUpCall;->wakeUpIn(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;->mInner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
