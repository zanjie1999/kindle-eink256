.class final Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlaybackMetricsLoggerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenOnOffReceiver"
.end annotation


# instance fields
.field private final delayInMillisecs:J

.field private final handlerToCheckIfNotInLockScreenAndReaderActivity:Landroid/os/Handler;

.field private final isScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

.field private final threadToCheckIfNotInLockScreenAndReaderActivity:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)V
    .locals 2

    .line 196
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->this$0:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 175
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->delayInMillisecs:J

    .line 180
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ReaderActivityForeGroundStatus"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->threadToCheckIfNotInLockScreenAndReaderActivity:Landroid/os/HandlerThread;

    .line 190
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->isScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 197
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->threadToCheckIfNotInLockScreenAndReaderActivity:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 198
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->threadToCheckIfNotInLockScreenAndReaderActivity:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->handlerToCheckIfNotInLockScreenAndReaderActivity:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->isScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;)J
    .locals 2

    .line 170
    iget-wide v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->delayInMillisecs:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;)Landroid/os/Handler;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->handlerToCheckIfNotInLockScreenAndReaderActivity:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 204
    invoke-static {}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received Screen event: %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    if-ne v0, p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->isScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->this$0:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    sget-object p2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->LOCK_SCREEN_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-static {p1, p2}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->access$100(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V

    return-void

    .line 210
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    if-ne p2, p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->isScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->handlerToCheckIfNotInLockScreenAndReaderActivity:Landroid/os/Handler;

    new-instance p2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;

    invoke-direct {p2, p0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;-><init>(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;)V

    iget-wide v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->delayInMillisecs:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
