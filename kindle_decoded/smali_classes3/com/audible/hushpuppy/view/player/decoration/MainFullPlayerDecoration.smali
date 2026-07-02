.class public final Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;
.super Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;
.source "MainFullPlayerDecoration.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private bookIconViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/audible/hushpuppy/view/seekbar/BookIconView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V
    .locals 0

    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;)V

    .line 83
    iput-object p6, p0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    return-void
.end method

.method private getDecorationView(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 2

    .line 110
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration$1;->$SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$DecorationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    .line 117
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "getDecoration is null (decorationType not TOP or RIGHT)"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->getSeekBarViewByDecorationType(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object p1

    return-object p1

    .line 112
    :cond_1
    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->getPlayerView(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object p1

    return-object p1
.end method

.method private getSeekBarViewByDecorationType(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 2

    .line 162
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    if-ne p1, v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->getSeekBarView()Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 173
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->getDecorationView(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1, p4}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    :cond_0
    return-object p1
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 1

    .line 91
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->isDebugEnabled()Z

    move-result p1

    const-string v0, "getDecoration(DecorationType) without context isn\'t supported. Use getDecoration(DecorationType, Context, ViewParent, ColorMode) instead"

    if-nez p1, :cond_0

    .line 94
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getPlayerPageText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected getSeekBarView()Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->bookIconViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/audible/hushpuppy/view/seekbar/BookIconView;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/audible/hushpuppy/view/seekbar/BookIconView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->bookIconViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;->bookIconViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/ColorCodedView;

    return-object v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 1

    .line 138
    sget-object v0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration$1;->$SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$TextDecorationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->getPageText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isShowPlayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
