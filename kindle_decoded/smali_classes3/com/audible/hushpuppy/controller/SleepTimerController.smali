.class public final Lcom/audible/hushpuppy/controller/SleepTimerController;
.super Ljava/lang/Object;
.source "SleepTimerController.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/ISleepTimerController;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

.field private final context:Landroid/content/Context;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private timer:Lcom/audible/hushpuppy/controller/BaseSleepTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/hushpuppy/controller/ChapterController;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

    .line 59
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 60
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 61
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->timer:Lcom/audible/hushpuppy/controller/BaseSleepTimer;

    .line 64
    invoke-virtual {p4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancelCurrentTimer()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->timer:Lcom/audible/hushpuppy/controller/BaseSleepTimer;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/BaseSleepTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$CancelTimer;)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/SleepTimerController;->cancelCurrentTimer()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/SleepTimerController;->cancelCurrentTimer()V

    .line 73
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartDurationTimer;->getDurationMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/audible/hushpuppy/controller/SleepTimerController;->startDurationSleepTimer(J)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/sleep/SleepTimerEvent$StartEndOfChapterTimer;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/SleepTimerController;->cancelCurrentTimer()V

    .line 82
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/SleepTimerController;->startEndOfChapterSleepTimer()V

    return-void
.end method

.method public sendTimerRevealEvent()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->timer:Lcom/audible/hushpuppy/controller/BaseSleepTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/BaseSleepTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->timer:Lcom/audible/hushpuppy/controller/BaseSleepTimer;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/BaseSleepTimer;->revealTimerView()V

    :cond_0
    return-void
.end method

.method public startDurationSleepTimer(J)V
    .locals 7

    .line 95
    new-instance v6, Lcom/audible/hushpuppy/controller/DurationSleepTimer;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    move-object v0, v6

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/DurationSleepTimer;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;J)V

    iput-object v6, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->timer:Lcom/audible/hushpuppy/controller/BaseSleepTimer;

    .line 96
    invoke-virtual {v6}, Lcom/audible/hushpuppy/controller/BaseSleepTimer;->start()V

    return-void
.end method

.method public startEndOfChapterSleepTimer()V
    .locals 7

    .line 101
    new-instance v6, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;-><init>(Landroid/content/Context;Lcom/audible/hushpuppy/controller/ChapterController;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    iput-object v6, p0, Lcom/audible/hushpuppy/controller/SleepTimerController;->timer:Lcom/audible/hushpuppy/controller/BaseSleepTimer;

    .line 102
    invoke-virtual {v6}, Lcom/audible/hushpuppy/controller/BaseSleepTimer;->start()V

    return-void
.end method
