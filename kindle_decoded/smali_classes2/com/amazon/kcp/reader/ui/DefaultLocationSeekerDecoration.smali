.class public Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;
.super Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;
.source "DefaultLocationSeekerDecoration.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private defaultTextAboveSeekBar:Z

.field private displayStringsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private isTrackingTouch:Z

.field private kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mostRecentPosition:I

.field private seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;Z)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->isTrackingTouch:Z

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 68
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 69
    iput-boolean p4, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->defaultTextAboveSeekBar:Z

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->isTrackingTouch:Z

    return p1
.end method

.method private calculatePercent(III)I
    .locals 1

    sub-int/2addr p1, p2

    const/4 v0, 0x0

    .line 537
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 538
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFOSDevice()Z

    move-result p2

    if-eqz p2, :cond_1

    float-to-int p1, p1

    return p1

    .line 543
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getLocationDisplayStrings(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 454
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getPositionFromSeeker(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v1

    .line 455
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    .line 456
    invoke-virtual {p0, p1, v2, v1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->computeDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;

    move-result-object p1

    .line 458
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->location_info_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 465
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 467
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    .line 481
    sget-object v1, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid string length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aget-object v2, p1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aget-object p1, p1, v4

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 472
    :cond_2
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aget-object p1, p1, v3

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    :cond_3
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method private getLocationSeekerText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 6

    .line 217
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 222
    :cond_0
    invoke-static {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getPositionFromSeeker(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v1

    .line 224
    iget v2, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->mostRecentPosition:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->displayStringsMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 225
    :cond_1
    iput v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->mostRecentPosition:I

    .line 227
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getLocationDisplayStrings(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->displayStringsMap:Ljava/util/Map;

    .line 228
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getLocationSeekerTextForFastNavigation(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 231
    :cond_3
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->defaultTextAboveSeekBar:Z

    if-eqz v2, :cond_5

    .line 232
    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->BOTTOM_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-ne p1, v2, :cond_6

    :cond_4
    return-object v1

    .line 236
    :cond_5
    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-eq p1, v2, :cond_8

    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-eq p1, v2, :cond_8

    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-ne p1, v2, :cond_6

    goto :goto_1

    .line 241
    :cond_6
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getPositionFromSeeker(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v2

    .line 247
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isChapterNavigationSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    if-ne p1, v3, :cond_7

    .line 248
    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getChapterInfo(Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_0

    .line 250
    :cond_7
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getLocationDisplayStrings(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Map;

    move-result-object v0

    .line 251
    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getValueOrEmpty(Ljava/util/Map;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object v2

    .line 252
    sget-object v3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-direct {p0, v0, v3}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getValueOrEmpty(Ljava/util/Map;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object v3

    .line 253
    sget-object v4, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-direct {p0, v0, v4}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getValueOrEmpty(Ljava/util/Map;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v3

    move-object v3, v5

    .line 256
    :goto_0
    sget-object v4, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$2;->$SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$TextDecorationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    return-object v2

    :pswitch_1
    return-object v0

    :pswitch_2
    return-object v3

    :cond_8
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getLocationSeekerTextForFastNavigation(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getPositionFromSeeker(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v0

    .line 492
    invoke-virtual {p0, p2, v0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getChapterInfo(Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;

    move-result-object p2

    .line 494
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_LEFT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-direct {p0, p3, v0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getValueOrEmpty(Ljava/util/Map;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object v0

    .line 495
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_CENTER:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-direct {p0, p3, v1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getValueOrEmpty(Ljava/util/Map;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object v1

    .line 496
    sget-object v2, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;->UPPER_RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;

    invoke-direct {p0, p3, v2}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getValueOrEmpty(Ljava/util/Map;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p3

    .line 498
    sget-object v2, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$2;->$SwitchMap$com$amazon$kindle$krx$ui$ILocationSeekerDecoration$TextDecorationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    return-object p3

    :cond_1
    return-object p2

    :cond_2
    return-object v1

    :cond_3
    return-object v0
.end method

.method private getSeekerInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTextViewDisplayStringForLocation(Lcom/amazon/android/docviewer/KindleDocViewer;ILjava/lang/String;III)Ljava/lang/String;
    .locals 5

    .line 390
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 391
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getStringFormatWithTimeRemaining(Z)I

    move-result p5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, v0, v4

    .line 392
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, v2

    aput-object p3, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    .line 391
    invoke-virtual {p1, p5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 394
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, p5}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->isMostRecentLabel(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getStringFormat(ZZ)I

    move-result p1

    new-array p5, v3, [Ljava/lang/Object;

    .line 395
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p5, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, v1

    .line 394
    invoke-virtual {p3, p1, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTextViewDisplayStringForPageLabel(Lcom/amazon/android/docviewer/KindleDocViewer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 378
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 379
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getStringFormatWithTimeRemaining(Z)I

    move-result p6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v2

    aput-object p5, v0, v4

    aput-object p3, v0, v1

    .line 380
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    .line 379
    invoke-virtual {p1, p6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 382
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, p6}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->isMostRecentLabel(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z

    move-result p1

    invoke-virtual {p0, v4, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getStringFormat(ZZ)I

    move-result p1

    new-array p6, v3, [Ljava/lang/Object;

    aput-object p4, p6, v2

    aput-object p5, p6, v4

    .line 383
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p6, v1

    .line 382
    invoke-virtual {p3, p1, p6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getValueOrEmpty(Ljava/util/Map;Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 516
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected computeDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;
    .locals 7

    .line 334
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->computePercentageForDisplayText(Lcom/amazon/android/docviewer/KindleDoc;I)I

    move-result v2

    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->show_ticr_in_location_bar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getTicrInfo(Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 344
    :goto_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {v0, p3}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v4, v1

    .line 347
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 348
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastBodyPageLabel()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    .line 349
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getTextViewDisplayStringForPageLabel(Lcom/amazon/android/docviewer/KindleDocViewer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 354
    :cond_2
    invoke-interface {p2, p3}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v6

    .line 355
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    .line 356
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getTextViewDisplayStringForLocation(Lcom/amazon/android/docviewer/KindleDocViewer;ILjava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method protected computePercentageForDisplayText(Lcom/amazon/android/docviewer/KindleDoc;I)I
    .locals 1

    .line 365
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 366
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v0

    .line 367
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result p1

    .line 372
    invoke-direct {p0, p2, v0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->calculatePercent(III)I

    move-result p1

    return p1
.end method

.method public getChangeListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration$1;-><init>(Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method protected getChapterInfo(Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;
    .locals 1

    .line 275
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 278
    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/IKindleTOC;->getLowestLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 280
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getContentDescription(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getLocationSeekerText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 3

    .line 205
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 208
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getMaxProgress()Ljava/lang/Integer;
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookPositionBase()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMinSeekBarProgress()I
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getPositionFromSeeker(Lcom/amazon/android/docviewer/KindleDocViewer;)I
    .locals 1

    .line 323
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getInstance(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 324
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getSeekPosition()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSecondaryProgress()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->IncorrectContextUseViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 182
    sget v1, Lcom/amazon/kindle/krl/R$layout;->default_reader_layout_seek_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    const/4 v1, -0x1

    .line 183
    invoke-interface {v0, v1, v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->updateDimensions(II)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getMinSeekBarProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->setMinPosition(I)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->seekBar:Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    return-object v0
.end method

.method protected getStringFormat(ZZ)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    .line 435
    sget p1, Lcom/amazon/kindle/krl/R$string;->current_location:I

    return p1

    .line 444
    :cond_3
    sget p1, Lcom/amazon/kindle/krl/R$string;->kre_synccx_most_recent_current_page_footer:I

    return p1

    .line 441
    :cond_4
    sget p1, Lcom/amazon/kindle/krl/R$string;->kre_synccx_most_recent_current_location:I

    return p1

    .line 438
    :cond_5
    sget p1, Lcom/amazon/kindle/krl/R$string;->current_page_footer:I

    return p1
.end method

.method protected getStringFormatWithTimeRemaining(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 420
    sget p1, Lcom/amazon/kindle/krl/R$string;->page_footer_ticr:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$string;->location_footer_ticr:I

    :goto_0
    return p1
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getLocationSeekerText(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$TextDecorationType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTicrInfo(Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 300
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v1

    .line 302
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getType()Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->TIME_TO_READ_BOOK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    if-ne v0, v1, :cond_2

    .line 308
    invoke-virtual {p0, v2, p1, p2}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getTimeLeftInBook(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 310
    :cond_2
    invoke-virtual {p0, v2, p1, p2}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getTimeLeftInChapter(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeLeftInBook(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;
    .locals 0

    .line 315
    invoke-virtual {p1}, Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;->getTimeRemainingStringForBook()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeLeftInChapter(Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;Lcom/amazon/android/docviewer/KindleDocViewer;I)Ljava/lang/String;
    .locals 0

    .line 319
    invoke-virtual {p1}, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler;->getTimeRemainingString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isMostRecentLabel(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 407
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 408
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p2

    .line 409
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result p1

    .line 408
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isMostRecentPageReadWaypointInRange(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isTrackingTouch()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->isTrackingTouch:Z

    return v0
.end method

.method protected navigateToSeekbarProgress(Landroid/widget/SeekBar;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->getSeekerInstance()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 159
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    :cond_0
    return-void
.end method

.method protected onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method protected onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 134
    instance-of v0, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_1

    .line 135
    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    :cond_1
    return-void
.end method

.method protected onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultLocationSeekerDecoration;->navigateToSeekbarProgress(Landroid/widget/SeekBar;)V

    return-void
.end method
