.class Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "DurationSleepTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/DurationSleepTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DurationSleepCountDownTimer"
.end annotation


# static fields
.field private static final ONE_SECOND:J = 0x3e8L


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private hasFinished:Z

.field private lastKnownTime:J

.field final synthetic this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/DurationSleepTimer;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;J)V
    .locals 2

    .line 148
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    const-wide/16 v0, 0x3e8

    .line 149
    invoke-direct {p0, p3, p4, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 151
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->hasFinished:Z

    .line 154
    iput-wide p3, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->lastKnownTime:J

    return-void
.end method


# virtual methods
.method public final getTimeRemaining()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->lastKnownTime:J

    return-wide v0
.end method

.method public hasFinished()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->hasFinished:Z

    return v0
.end method

.method public final onFinish()V
    .locals 2

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->hasFinished:Z

    .line 160
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 161
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->access$400(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$ConcealTimer;

    invoke-direct {v1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$ConcealTimer;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 1

    .line 166
    iput-wide p1, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->lastKnownTime:J

    .line 167
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->this$0:Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    invoke-static {v0, p1, p2}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->access$500(Lcom/audible/hushpuppy/controller/DurationSleepTimer;J)V

    return-void
.end method
