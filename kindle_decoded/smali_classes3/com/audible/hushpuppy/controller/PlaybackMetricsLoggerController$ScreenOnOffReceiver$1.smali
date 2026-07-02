.class Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;
.super Ljava/lang/Object;
.source "PlaybackMetricsLoggerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    iget-object v0, v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->this$0:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->access$200(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    iget-object v0, v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->this$0:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->access$300(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->isOnLockScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Reader Activity is BACKGROUNDED & not in lock screen"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    iget-object v0, v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->this$0:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->OUTSIDE_READER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->access$100(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->access$400(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    iget-object v0, v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->this$0:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->access$500(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->LOCK_SCREEN_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    if-ne v0, v1, :cond_1

    .line 223
    invoke-static {}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Screen got ON, but still current playback mode is Lock screen!! Will check again if we are out of lock screen"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->access$700(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver$1;->this$1:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    invoke-static {v1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;->access$600(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
