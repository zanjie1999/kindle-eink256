.class public abstract Lcom/audible/hushpuppy/view/player/view/PlayerView;
.super Lcom/audible/hushpuppy/view/player/view/RefreshableView;
.source "PlayerView.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected actionBarUpsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

.field protected audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field protected audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field protected chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

.field protected context:Landroid/content/Context;

.field protected coverArtManager:Lcom/audible/hushpuppy/view/player/view/ICoverArtManager;

.field protected hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field protected final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

.field protected mainLayout:Landroid/view/ViewGroup;

.field protected playerType:Lcom/audible/hushpuppy/view/player/view/PlayerType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected playerViewState:Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected seekController:Lcom/audible/hushpuppy/controller/SeekController;

.field protected viewController:Lcom/audible/hushpuppy/controller/ViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/view/PlayerView;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/player/view/PlayerType;Lcom/audible/hushpuppy/common/player/PlayerViewState;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p4, v0}, Lcom/audible/hushpuppy/view/player/view/RefreshableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "context can\'t be null."

    .line 133
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Landroid/content/Context;

    iput-object p4, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->context:Landroid/content/Context;

    const-string p4, "playerType can\'t be null."

    .line 134
    invoke-static {p2, p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/hushpuppy/view/player/view/PlayerType;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->playerType:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    const-string p2, "playerViewState can\'t be null."

    .line 135
    invoke-static {p3, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/hushpuppy/common/player/PlayerViewState;

    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->playerViewState:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    const-string p2, "kindleReaderSdk can\'t be null."

    .line 136
    invoke-static {p1, p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 138
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->injectDependencyObjects()V

    .line 139
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->loadMainLayout()V

    return-void
.end method

.method private inflateMainLayout()V
    .locals 3

    .line 222
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 223
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->getMainLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->mainLayout:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected final getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 3

    .line 190
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 191
    :goto_0
    sget-object v1, Lcom/audible/hushpuppy/view/player/view/PlayerType;->LIBRARY_PLAYER:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->getPlayerType()Lcom/audible/hushpuppy/view/player/view/PlayerType;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 192
    invoke-static {}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->isDarkModePhaseOneEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 195
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-object v0

    .line 197
    :cond_2
    invoke-static {}, Lcom/audible/hushpuppy/extensions/darkmode/DarkModeUtils;->isDarkModePhaseTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMainLayoutId()I
.end method

.method public final getPlayerType()Lcom/audible/hushpuppy/view/player/view/PlayerType;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->playerType:Lcom/audible/hushpuppy/view/player/view/PlayerType;

    return-object v0
.end method

.method public final getPlayerViewState()Lcom/audible/hushpuppy/common/player/PlayerViewState;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->playerViewState:Lcom/audible/hushpuppy/common/player/PlayerViewState;

    return-object v0
.end method

.method protected abstract initViews()V
.end method

.method protected abstract injectDependencyObjects()V
.end method

.method protected final loadMainLayout()V
    .locals 2

    .line 176
    sget-object v0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Loading main layout"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->inflateMainLayout()V

    .line 178
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->initViews()V

    .line 179
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/RefreshableView;->refresh()V

    .line 180
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/view/PlayerView;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    return-void
.end method

.method protected final shouldShowPlayButton()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/view/PlayerView;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;->PAUSE:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
