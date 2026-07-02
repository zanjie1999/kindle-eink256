.class Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;
.super Ljava/lang/Object;
.source "DurationSleepTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/DurationSleepTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->access$002(Lcom/audible/hushpuppy/controller/DurationSleepTimer;Z)Z

    .line 70
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    new-instance v1, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    invoke-static {v2}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->access$200(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    move-result-object v3

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    invoke-static {v4}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->access$300(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;-><init>(Lcom/audible/hushpuppy/controller/DurationSleepTimer;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;J)V

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->access$102(Lcom/audible/hushpuppy/controller/DurationSleepTimer;Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;)Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;

    .line 71
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->access$100(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 74
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->revealTimerView()V

    return-void
.end method
