.class public Lcom/amazon/kindle/nln/pageflip/NLNUtils;
.super Ljava/lang/Object;
.source "NLNUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/pageflip/NLNUtils$DummyPage;
    }
.end annotation


# static fields
.field private static IS_NLN_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String;

.field public static supressShowChromeForBrochure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kindle/nln/pageflip/NLNUtils;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->supressShowChromeForBrochure:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTutorials()V
    .locals 3

    .line 452
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "nln_tutorial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setLastTutorialVersionShown(Ljava/lang/String;I)V

    return-void
.end method

.method public static createUnmanagedPageView(Landroid/content/Context;Lcom/amazon/kindle/nln/IThumbnailPage;Lcom/amazon/kindle/nln/IThumbnailManager;F)Landroid/view/View;
    .locals 2

    .line 224
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    .line 225
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p0

    .line 226
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int v0, v0

    .line 227
    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float p0, p0, p3

    float-to-int p0, p0

    if-eqz p2, :cond_0

    .line 230
    invoke-interface {p2}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result p3

    if-nez p3, :cond_0

    .line 231
    new-instance p3, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p2, p1, p3, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->getUnmanagedViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;Landroid/graphics/Rect;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getChromeViewForTutorial()Landroid/view/View;
    .locals 2

    .line 457
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    sget v1, Lcom/amazon/kindle/krl/R$id;->seeker_bar_animatable:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getIndexContainingPosition(Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")I"
        }
    .end annotation

    .line 334
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/NLNUtils$DummyPage;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils$DummyPage;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;)V

    sget-object v1, Lcom/amazon/kindle/nln/IThumbnailPage;->PAGE_END_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, -0x1

    .line 341
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 346
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    const/16 v2, 0xa

    add-int/lit8 v3, v0, 0x1

    .line 349
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-lez v2, :cond_2

    .line 350
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 351
    invoke-interface {v4}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    if-le v4, v1, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-nez v2, :cond_3

    move p0, v0

    :cond_3
    if-eq v0, p0, :cond_4

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran into some pages where the position ranges overlap. Looking for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and originally got index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but searched and found that we should use "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    return p0
.end method

.method public static getPageContainingPosition(Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Lcom/amazon/kindle/nln/IThumbnailPage;"
        }
    .end annotation

    .line 393
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 397
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getIndexContainingPosition(Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    .line 398
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    .line 402
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/nln/IThumbnailPage;

    return-object p0
.end method

.method public static getPageLabelForPosition(ILcom/amazon/android/docviewer/IPageLabelProvider;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Z)Ljava/lang/String;
    .locals 6

    const/4 v1, -0x1

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 294
    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageLabelForPositionRange(IILcom/amazon/android/docviewer/IPageLabelProvider;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPageLabelForPositionRange(IILcom/amazon/android/docviewer/IPageLabelProvider;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Z)Ljava/lang/String;
    .locals 6

    .line 300
    invoke-interface {p4}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 301
    invoke-interface {p2, p0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 303
    :goto_1
    invoke-static {v4}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 p0, -0x1

    if-eq p1, p0, :cond_2

    .line 304
    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    :cond_2
    invoke-static {v3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 306
    sget-boolean p0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->addLabels:Z

    if-eqz p0, :cond_3

    sget p0, Lcom/amazon/kindle/krl/R$string;->nln_page_range_with_labels:I

    goto :goto_2

    :cond_3
    sget p0, Lcom/amazon/kindle/krl/R$string;->nln_page_range_no_labels:I

    .line 307
    :goto_2
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v4, p2, v2

    aput-object v3, p2, v1

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_4
    sget-boolean p0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->addLabels:Z

    if-eqz p0, :cond_5

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/amazon/kindle/krl/R$string;->seekbar_waypoint_page_label:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v4, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    return-object v4

    :cond_6
    if-eqz v0, :cond_8

    if-eqz p5, :cond_7

    goto :goto_3

    :cond_7
    return-object v3

    .line 314
    :cond_8
    :goto_3
    invoke-interface {p4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p0

    .line 315
    sget-boolean p1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->addLabels:Z

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->seekbar_waypoint_location_label:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_9
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public static getPageRange(Lcom/amazon/android/docviewer/KindleDocViewer;I)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 2

    .line 492
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/model/Annotations/IntPositionFactory;-><init>()V

    .line 496
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 497
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 498
    invoke-interface {p0}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 501
    invoke-interface {p0, p1, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->getPage(Lcom/amazon/kindle/krx/reader/IPosition;Z)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 502
    invoke-interface {p0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static isFullPageVisible()Z
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->isInNLNMode(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Z

    move-result v0

    return v0
.end method

.method private static isInNLNMode(Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentNLNMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isNLNSupportedForMetric(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 119
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    sget-boolean v1, Lcom/amazon/kcp/debug/DebugUtils;->RTL_CONTENT_SUPPORT_FOR_NLN:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 121
    :goto_2
    sget-object v2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailGeneration:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p0, v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    invoke-static {p0}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/content/KindleContentFormat;->YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static isNonLinearNavigationEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    sget-boolean v0, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->IS_NLN_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNonLinearNavigationSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 7

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 81
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    sget-boolean v2, Lcom/amazon/kcp/debug/DebugUtils;->RTL_CONTENT_SUPPORT_FOR_NLN:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 84
    :goto_2
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 85
    invoke-interface {v0, p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    .line 87
    :goto_3
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    .line 89
    invoke-static {v0}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v3

    .line 90
    sget-object v5, Lcom/amazon/kindle/content/KindleContentFormat;->YJFF:Lcom/amazon/kindle/content/KindleContentFormat;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isGenericFixedFormat()Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedView:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 92
    invoke-interface {v0, v5}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedViewNative:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 93
    invoke-interface {v0, v5}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    .line 99
    :goto_4
    sget-object v6, Lcom/amazon/kindle/content/KindleContentFormat;->YJLR:Lcom/amazon/kindle/content/KindleContentFormat;

    invoke-virtual {v3, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v5, :cond_6

    .line 100
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->supportBEVPFVForComics()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v3, 0x1

    .line 101
    :goto_6
    sget-object v5, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailGeneration:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v5}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 103
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    if-nez p0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public static markNLNBrochureAsShown()V
    .locals 3

    .line 442
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "nln_tutorial"

    const/4 v2, 0x1

    .line 443
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setLastTutorialVersionShown(Ljava/lang/String;I)V

    return-void
.end method

.method public static newBlankBreadCrumbView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->nln_breadcrumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 202
    sget v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 203
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v1, p0, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v1

    .line 205
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v1, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 207
    new-instance v2, Landroid/widget/Space;

    invoke-direct {v2, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 208
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method public static newBreadCrumbView(Landroid/content/Context;Lcom/amazon/kindle/nln/IThumbnailManager;Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/view/View;
    .locals 3

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->nln_breadcrumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 187
    sget v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 188
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v1, p0, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p0

    .line 190
    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    int-to-float p0, v0

    div-float/2addr p0, v1

    float-to-int p0, p0

    .line 192
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 194
    invoke-interface {p1, p2, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->getUnmanagedViewForPosition(Lcom/amazon/kindle/krx/reader/IPosition;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 1

    .line 137
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->isNonLinearNavigationSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static wasShownNLNBrochure()Z
    .locals 4

    .line 426
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "nln_tutorial"

    .line 427
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getLastTutorialVersionShown(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 432
    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/application/UserSettingsController;->setLastTutorialVersionShown(Ljava/lang/String;I)V

    return v3

    :cond_0
    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
