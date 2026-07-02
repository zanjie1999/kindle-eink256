.class Lcom/audible/hushpuppy/view/player/view/SleepTimerView;
.super Ljava/lang/Object;
.source "SleepTimerView.java"


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;

.field private view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lde/greenrobot/event/EventBus;Landroid/widget/TextView;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->eventBus:Lde/greenrobot/event/EventBus;

    .line 35
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->view:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 37
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->view:Landroid/widget/TextView;

    return-object p0
.end method

.method private concealSleepTimerView()V
    .locals 2

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    new-instance v1, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$3;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$3;-><init>(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private revealSleepTimerView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    new-instance v1, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$2;-><init>(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$ConcealTimer;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->concealSleepTimerView()V

    return-void
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealDurationTimer;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealDurationTimer;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealDurationTimer;->getAccessibilityText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->revealSleepTimerView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealEndOfChapterTimer;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealEndOfChapterTimer;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$RevealEndOfChapterTimer;->getAccessibilityText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->revealSleepTimerView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    new-instance v1, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/hushpuppy/view/player/view/SleepTimerView$1;-><init>(Lcom/audible/hushpuppy/view/player/view/SleepTimerView;Lcom/audible/hushpuppy/common/event/sleep/SleepTimerViewEvent$UpdateTimer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unregisterFromEventBus()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/SleepTimerView;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
