.class public final Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;
.super Ljava/lang/Object;
.source "SleepTimerButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

.field private final priority:I

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 91
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 93
    iput-object p3, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->eventBus:Lde/greenrobot/event/EventBus;

    .line 94
    iput-object p4, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 95
    iput p6, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->priority:I

    .line 96
    iput-object p5, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 141
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p2, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_sleeptimer_white:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_sleeptimer_black:I

    .line 142
    :goto_0
    iget-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->priority:I

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->action_sleep_timer:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 2

    .line 120
    sget-object v0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1, p1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isAudiobookDownloaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 129
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 134
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenSleepTimerMenu:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 135
    new-instance p1, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {p1, v0, v1, v2}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;Lde/greenrobot/event/EventBus;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
