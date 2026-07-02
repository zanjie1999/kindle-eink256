.class public Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;
.super Ljava/lang/Object;
.source "PowerManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;
    }
.end annotation


# instance fields
.field private mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field mInner:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInner:Landroid/os/PowerManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "power"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInner:Landroid/os/PowerManager;

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInner:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public goToSleep(J)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInner:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInner:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public newWakeLock(ILjava/lang/String;)Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;
    .locals 2

    .line 124
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInner:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$WakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper$1;)V

    .line 125
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInjector:Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;->injectMembers(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInner:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public userActivity(JZ)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/PowerManagerWrapper;->mInner:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method
