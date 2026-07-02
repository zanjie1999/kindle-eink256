.class public final Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;
.super Ljava/lang/Object;
.source "HushpuppyPositionMarker.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IPositionMarker;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field protected final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field protected final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 72
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 73
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 74
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-void
.end method


# virtual methods
.method public declared-synchronized getMarkedPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 4

    monitor-enter p0

    .line 80
    :try_start_0
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "MarkerPosition: getMarkedPosition requested by Reader"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "MarkerPosition: BookNavigator retrieved from readermanager is null"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-object v1

    .line 87
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v2}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "MarkerPosition: position: %s returned to the Reader"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, "NULL"

    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit p0

    return-object v0

    .line 88
    :cond_3
    :goto_1
    :try_start_2
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "MarkerPosition: Current title is either sample or not playing, returning null"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMarkerDrawableForMarkerLocation(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker$1;->$SwitchMap$com$amazon$kindle$krx$ui$IPositionMarker$MarkerLocation:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_0

    if-eq p2, v1, :cond_0

    .line 121
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "MarkerPosition: breadcrumb icon request with incorrect MarkerLocation"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->headphone_light_blue_pfv_bev:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->headphone_dark_blue_pfv_bev:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1

    .line 104
    :cond_2
    sget-object p2, Lcom/audible/hushpuppy/controller/HushpuppyPositionMarker$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->breadcrumb_speaker_white_theme:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 112
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->breadcrumb_speaker_white_theme:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 110
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->breadcrumb_speaker_white_theme:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 108
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->breadcrumb_speaker_white_theme:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 106
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->breadcrumb_speaker_black_theme:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
