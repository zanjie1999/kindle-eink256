.class public final Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;
.super Ljava/lang/Object;
.source "MainPlayerNarrationSpeedButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;,
        Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$CancelListener;
    }
.end annotation

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

.field private static final PRIORITY:I = 0x1f4


# instance fields
.field private final cancellationListener:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$CancelListener;

.field private final context:Landroid/content/Context;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

.field private final narrationSpeedLabels:[Ljava/lang/CharSequence;

.field private final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

.field private final selectionListener:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->context:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 104
    iput-object p3, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 105
    iput-object p4, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 106
    iput-object p5, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 107
    iput-object p6, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 108
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->makeNarrationSpeedLabels()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->narrationSpeedLabels:[Ljava/lang/CharSequence;

    .line 110
    new-instance p1, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$CancelListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$CancelListener;-><init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->cancellationListener:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$CancelListener;

    .line 111
    new-instance p1, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;

    invoke-direct {p1, p0, p2}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;-><init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->selectionListener:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;

    return-void
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;)Lcom/audible/hushpuppy/controller/LocationSeekerController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    return-object p0
.end method

.method private makeNarrationSpeedLabels()[Ljava/lang/CharSequence;
    .locals 6

    .line 121
    invoke-static {}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->values()[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    move-result-object v0

    .line 122
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 125
    iget-object v4, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getNarrationSpeedDialogLabel(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 181
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p2, p1, :cond_0

    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_narration_speed_white:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->full_player_narration_speed_black:I

    .line 182
    :goto_0
    iget-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->context:Landroid/content/Context;

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

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->action_narration_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isAudiobookDownloaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1

    .line 150
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 48
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->getVisibility(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 157
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenNarrationSpeedMenu:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 159
    iget-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getNarrationSpeedSetting()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 160
    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    .line 163
    new-instance v1, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->getColorModeFromAppTheme(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/audible/hushpuppy/common/dialog/ThemedAlertDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->dialog_narration_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    iget-object v2, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->narrationSpeedLabels:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->selectionListener:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;

    invoke-virtual {v1, v2, p1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->cancel:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->cancellationListener:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$CancelListener;

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    new-instance v0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;

    invoke-direct {v0, p0, v1}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;-><init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->onClick(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
