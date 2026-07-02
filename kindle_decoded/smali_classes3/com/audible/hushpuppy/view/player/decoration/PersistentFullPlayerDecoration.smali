.class public final Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;
.super Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;
.source "PersistentFullPlayerDecoration.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private headphoneIconViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;)V

    .line 78
    iput-object p6, p0, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method private getDecorationView(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;->shouldReturnNewPlayerView(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->getPlayerView(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "getDecoration is null (decorationType not ADDITIONAL_CONTROL or RIGHT or TOP)"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private shouldReturnNewPlayerView(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Z
    .locals 1

    .line 119
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->ADDITIONAL_CONTROL:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;->getDecorationView(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1, p4}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    :cond_0
    return-object p1
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 1

    .line 86
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->isDebugEnabled()Z

    move-result p1

    const-string v0, "getDecoration(DecorationType) without context isn\'t supported. Use getDecoration(DecorationType, Context, ViewParent, ColorMode) instead"

    if-nez p1, :cond_0

    .line 89
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getPlayerPageText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->pipe_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 151
    invoke-virtual {v2, p1, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v4}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentAudioPositionPercent()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->isPageNumberingSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/decoration/BaseFullPlayerDecoration;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->current_page_position:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;

    move-result-object v4

    .line 161
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 160
    invoke-interface {v4, v0}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->getPageForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/IPage;

    move-result-object v0

    .line 162
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->getMaxPage()Lcom/amazon/kindle/krx/reader/IPage;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 164
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPage;->getPageLabel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, p1

    const/4 v0, 0x1

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPage;->getPageLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v2, p1, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    sget-object p1, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Exception getting the current page from IReaderManager, IPage was null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected isShowPlayer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
