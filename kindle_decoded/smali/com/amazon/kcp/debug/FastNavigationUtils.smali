.class public final Lcom/amazon/kcp/debug/FastNavigationUtils;
.super Ljava/lang/Object;
.source "FastNavigationUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/FastNavigationUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/debug/FastNavigationUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/FastNavigationUtils;->INSTANCE:Lcom/amazon/kcp/debug/FastNavigationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isFastNavigationSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 46
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 49
    :goto_1
    invoke-static {p1}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static final isPlaceholderPosition(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPlaceholderRange(Lcom/amazon/android/docviewer/KindleDocViewer;II)Z
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 20
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/debug/FastNavigationUtils;->INSTANCE:Lcom/amazon/kcp/debug/FastNavigationUtils;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isFastNavigationSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
