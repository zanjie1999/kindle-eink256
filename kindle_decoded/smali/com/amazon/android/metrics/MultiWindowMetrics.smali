.class public final Lcom/amazon/android/metrics/MultiWindowMetrics;
.super Ljava/lang/Object;
.source "MultiWindowMetrics.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/android/metrics/MultiWindowMetrics;

.field private static final bucketTracker:Lcom/amazon/android/metrics/BucketTracker;

.field private static final displayManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private static final encoder:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/android/metrics/MultiWindowMetrics;

    invoke-direct {v0}, Lcom/amazon/android/metrics/MultiWindowMetrics;-><init>()V

    sput-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics;->INSTANCE:Lcom/amazon/android/metrics/MultiWindowMetrics;

    .line 39
    sget-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics$encoder$1;->INSTANCE:Lcom/amazon/android/metrics/MultiWindowMetrics$encoder$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics;->encoder:Lkotlin/Lazy;

    .line 43
    sget-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics$displayManager$1;->INSTANCE:Lcom/amazon/android/metrics/MultiWindowMetrics$displayManager$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics;->displayManager:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/amazon/android/metrics/BucketTracker;

    invoke-direct {v0}, Lcom/amazon/android/metrics/BucketTracker;-><init>()V

    sput-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics;->bucketTracker:Lcom/amazon/android/metrics/BucketTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEncoder$p(Lcom/amazon/android/metrics/MultiWindowMetrics;)Lkotlin/Lazy;
    .locals 0

    .line 38
    sget-object p0, Lcom/amazon/android/metrics/MultiWindowMetrics;->encoder:Lkotlin/Lazy;

    return-object p0
.end method

.method private final generateMetadata(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/content/res/Configuration;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 101
    sget-object v1, Lcom/amazon/android/metrics/MultiWindowMetrics;->displayManager:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "displayManager.value"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/android/metrics/MultiWindowMetrics;->getDeviceRotation(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceOrientation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    sget-object v2, Lcom/amazon/android/metrics/MultiWindowMetrics;->displayManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 105
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/amazon/android/metrics/MultiWindowMetrics;->getBucket(IF)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiWindowWidthBucket"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p2, p2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v1

    invoke-direct {p0, v2, p2}, Lcom/amazon/android/metrics/MultiWindowMetrics;->getBucket(IF)Ljava/lang/String;

    move-result-object p2

    const-string v1, "MultiWindowHeightBucket"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    instance-of p2, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p2, :cond_1

    .line 109
    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p2, "BookAsin"

    .line 111
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private final getBucket(IF)Ljava/lang/String;
    .locals 5

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide v0, 0x3fd999999999999aL    # 0.4

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "OneThird"

    goto :goto_0

    :cond_0
    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v4, p1, v0

    if-ltz v4, :cond_1

    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    const-string p1, "Half"

    goto :goto_0

    :cond_1
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_2

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    const-string p1, "TwoThirds"

    goto :goto_0

    :cond_2
    const-string p1, "Fullscreen"

    :goto_0
    return-object p1
.end method

.method private final getDeviceRotation(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "Landscape"

    goto :goto_0

    :cond_0
    const-string p1, "Portrait"

    :goto_0
    return-object p1
.end method

.method private final isCurrentActivity(Lcom/amazon/kcp/redding/ReddingActivity;)Z
    .locals 2

    .line 149
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "AndroidApplicationController.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static final isInMultiWindow(Landroid/app/Activity;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final onConfigurationChanged(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/amazon/android/metrics/MultiWindowMetrics;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics;->INSTANCE:Lcom/amazon/android/metrics/MultiWindowMetrics;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/metrics/MultiWindowMetrics;->generateMetadata(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/content/res/Configuration;)Ljava/util/Map;

    move-result-object p1

    .line 71
    sget-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics;->bucketTracker:Lcom/amazon/android/metrics/BucketTracker;

    const-string v1, "MultiWindowWidthBucket"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.String"

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/String;

    const-string v3, "MultiWindowHeightBucket"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/String;

    new-instance v2, Lcom/amazon/android/metrics/MultiWindowMetrics$onConfigurationChanged$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/android/metrics/MultiWindowMetrics$onConfigurationChanged$1;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/android/metrics/BucketTracker;->updateBuckets(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final onMultiWindowChanged(Lcom/amazon/kcp/redding/ReddingActivity;Z)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics;->INSTANCE:Lcom/amazon/android/metrics/MultiWindowMetrics;

    invoke-direct {v0, p0}, Lcom/amazon/android/metrics/MultiWindowMetrics;->isCurrentActivity(Lcom/amazon/kcp/redding/ReddingActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    instance-of p0, p0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p0, :cond_0

    const-string p0, "Book"

    goto :goto_0

    :cond_0
    const-string p0, "Global"

    .line 60
    :goto_0
    sget-object v0, Lcom/amazon/android/metrics/MultiWindowMetrics;->encoder:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "MultiWindowEnabled"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "MultiWindowChanged"

    invoke-interface {v0, p0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
