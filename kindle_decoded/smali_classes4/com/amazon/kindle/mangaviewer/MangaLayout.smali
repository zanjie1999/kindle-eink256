.class public Lcom/amazon/kindle/mangaviewer/MangaLayout;
.super Lcom/amazon/kcp/reader/ui/BookLayout;
.source "MangaLayout.java"


# static fields
.field private static final MANGA_LAYOUT:Ljava/lang/String; = "MangaLayout"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/MangaLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/BookLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static newInstance(Lcom/amazon/kcp/reader/BookReaderActivity;)Lcom/amazon/kindle/mangaviewer/MangaLayout;
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/LayoutCache;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/LayoutCache;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/kmv/R$layout;->manga_layout:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/LayoutCache;->getLayout(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    goto :goto_0

    .line 30
    :cond_0
    sget v0, Lcom/amazon/kindle/kmv/R$layout;->manga_layout:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    .line 32
    :goto_0
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-object v0
.end method


# virtual methods
.method public getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMangaViewPager()Lcom/amazon/kindle/mangaviewer/IMangaViewPager;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaLayout;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    return-object v0
.end method

.method protected initMangaViewPager()V
    .locals 1

    .line 55
    sget v0, Lcom/amazon/kindle/kmv/R$id;->mangapager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaLayout;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    return-void
.end method

.method public onDocViewerAfterPositionChanged(I)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onDocViewerAfterPositionChanged(I)V

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaLayout;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->handlePositionJump()V

    .line 78
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "MangaLayout"

    const-string v2, "PositionJump"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->onFinishInflate()V

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaLayout;->initMangaViewPager()V

    return-void
.end method
