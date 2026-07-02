.class public Lcom/audible/hushpuppy/controller/DurationSleepTimer;
.super Lcom/audible/hushpuppy/controller/BaseSleepTimer;
.source "DurationSleepTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;
    }
.end annotation


# static fields
.field private static final SECONDS_PER_MINUTE:I = 0x3c


# instance fields
.field private audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private context:Landroid/content/Context;

.field private final duration:J

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private isRunning:Z

.field private timer:Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;J)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/BaseSleepTimer;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    .line 60
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 61
    iput-wide p4, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->duration:J

    return-void
.end method

.method static synthetic access$002(Lcom/audible/hushpuppy/controller/DurationSleepTimer;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->isRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->timer:Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;

    return-object p0
.end method

.method static synthetic access$102(Lcom/audible/hushpuppy/controller/DurationSleepTimer;Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;)Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->timer:Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->duration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/controller/DurationSleepTimer;J)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->updateTimerView(J)V

    return-void
.end method

.method private updateTimerView(J)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->updateTimerView(JZ)V

    return-void
.end method

.method private updateTimerView(JZ)V
    .locals 9

    .line 113
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    .line 114
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/16 v2, 0x3c

    rem-long/2addr p1, v2

    .line 116
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->main_player_sleep_time_remaining:I

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->context:Landroid/content/Context;

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->main_player_sleep_time_remaining:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 120
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealDurationTimer;

    invoke-direct {p3, v2, p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealDurationTimer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;

    invoke-direct {p3, v2, p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->isRunning:Z

    .line 83
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->timer:Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 84
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$ConcealTimer;

    invoke-direct {v1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$ConcealTimer;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->timer:Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->hasFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final revealTimerView()V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->timer:Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/DurationSleepTimer$DurationSleepCountDownTimer;->getTimeRemaining()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;->updateTimerView(JZ)V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    new-instance v1, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/controller/DurationSleepTimer$1;-><init>(Lcom/audible/hushpuppy/controller/DurationSleepTimer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
