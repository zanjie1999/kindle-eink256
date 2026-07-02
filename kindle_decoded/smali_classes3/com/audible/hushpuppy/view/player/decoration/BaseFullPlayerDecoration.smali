.class public abstract Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;
.super Ljava/lang/Object;
.source "BaseFullPlayerDecoration.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/ILocationSeekerDecorationEx;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MAXIMUM_VALID_AUDIO_POSITION_PERCENT:I = 0x64

.field private static final MINIMUM_VALID_AUDIO_POSITION_PERCENT:I


# instance fields
.field protected final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field protected final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected final locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

.field protected final playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

.field private final restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 106
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 107
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 108
    iput-object p4, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 109
    iput-object p5, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    return-void
.end method

.method private isEnabled()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "reader eBook is missing, location seeker disabled!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    if-nez v1, :cond_1

    .line 179
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "hushpuppy relationship is missing, location seeker disabled!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlayPossibleAtCurrentEbookLocation()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Upsell view disabled. Cannot play at current ebook location)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookPlaybackEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 184
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Audio playback is disabled in restriction apis; suppressing pitch banner."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_3
    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasEBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "reader ebook doesn\'t match, location seeker disabled!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_4
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Location seeker enabled"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    return-object p0
.end method

.method public final getContentDescription(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLocationSeekerWidget(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ILocationSeekerWidget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getMaxProgress()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getPageText()Ljava/lang/String;
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getPlaybackTimeLeft()I

    move-result v0

    .line 260
    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/ChromeUtils;->getFormattedTimeLeftString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSyncData()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 264
    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentAudioPositionPercent()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 265
    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentAudioPositionPercent()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 271
    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_time_left_in_book:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->getPlayerPageText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getPlayerPageText(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final getPlayerView(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 2

    .line 139
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getDecoration is null (upsell view disabled)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-object v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->getPlayerViewForReader(Landroid/content/Context;)Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 147
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getDecoration is null (no player view)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-object v1

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getDecoration is null (sample view)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-object v1

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->isShowPlayer()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x8

    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    :goto_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/player/view/RefreshableView;->refresh()V

    return-object p1
.end method

.method public final getSecondaryProgress()Ljava/lang/Integer;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getSecondaryProgress()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
.end method

.method protected abstract isShowPlayer()Z
.end method

.method public final isTrackingTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onProgressChanged(IZ)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onScrubbingStarted()V

    .line 243
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Started scrubbing"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onScrubbingStopped()V

    .line 249
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Finished scrubbing"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method
