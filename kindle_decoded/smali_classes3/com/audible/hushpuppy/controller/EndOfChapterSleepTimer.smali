.class public Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;
.super Lcom/audible/hushpuppy/controller/BaseSleepTimer;
.source "EndOfChapterSleepTimer.java"


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private context:Landroid/content/Context;

.field private final controller:Lcom/audible/hushpuppy/controller/ChapterController;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private expiration:I

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private isRunning:Z

.field private lastPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/hushpuppy/controller/ChapterController;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/BaseSleepTimer;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->controller:Lcom/audible/hushpuppy/controller/ChapterController;

    .line 66
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 67
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    .line 68
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->isRunning:Z

    .line 71
    invoke-virtual {p4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private getNextChapterPosition()I
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->controller:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/ChapterController;->getNextChapterStartTime()J

    move-result-wide v0

    long-to-int v1, v0

    .line 167
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getMinAudiobookPosAfterEbookPosition(I)I

    move-result v0

    return v0
.end method

.method private updatePosition(I)Z
    .locals 3

    .line 136
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->validPosition(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    iget v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->expiration:I

    if-le p1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->validPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 149
    :cond_1
    iget v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->lastPosition:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->expiration:I

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->validPosition(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->getNextChapterPosition()I

    move-result v0

    .line 151
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->validPosition(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->expiration:I

    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->validPosition(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 152
    :cond_3
    iput v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->expiration:I

    .line 157
    :cond_4
    iput p1, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->lastPosition:I

    return v1
.end method

.method private validPosition(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->isRunning:Z

    .line 87
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$ConcealTimer;

    invoke-direct {v1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$ConcealTimer;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->isRunning:Z

    return v0
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 5

    .line 108
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    if-eq v0, v1, :cond_0

    return-void

    .line 115
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->updatePosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 126
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->cancel()V

    :cond_1
    return-void

    .line 120
    :catch_0
    sget-object p1, Lcom/audible/hushpuppy/controller/BaseSleepTimer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Position in event is null."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 117
    :catch_1
    sget-object v0, Lcom/audible/hushpuppy/controller/BaseSleepTimer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "is not recognizable."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void
.end method

.method public final revealTimerView()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->main_player_sleep_time_end_of_chapter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealEndOfChapterTimer;

    invoke-direct {v2, v0}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealEndOfChapterTimer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->isRunning:Z

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->lastPosition:I

    .line 78
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->getNextChapterPosition()I

    move-result v0

    iput v0, p0, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->expiration:I

    .line 80
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/EndOfChapterSleepTimer;->revealTimerView()V

    return-void
.end method
