.class Lcom/amazon/device/ads/AdTimer;
.super Ljava/lang/Object;
.source "AdTimer.java"


# instance fields
.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/device/ads/AdTimer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public restartTimer()V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdTimer;->cancelTimer()V

    .line 29
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdTimer;->timer:Ljava/util/Timer;

    return-void
.end method

.method public scheduleTask(Ljava/util/TimerTask;J)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/device/ads/AdTimer;->timer:Ljava/util/Timer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
