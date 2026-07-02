.class public Lcom/amazon/kcp/reader/provider/BookImageThumbnailRendering;
.super Ljava/lang/Object;
.source "BookImageThumbnailRendering.java"


# static fields
.field static final POINT_ZERO:Landroid/graphics/PointF;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-class v0, Lcom/amazon/kcp/reader/provider/BookImageThumbnailRendering;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageThumbnailRendering;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageThumbnailRendering;->POINT_ZERO:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static renderPageClip(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/PageInfoProvider;Lcom/amazon/krf/platform/ThumbnailRenderer;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 46
    invoke-interface {p0, p3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v0

    .line 47
    invoke-interface {p0, p4}, Lcom/amazon/krf/platform/KRFBook;->createPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v2, v0, v1}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 49
    invoke-interface {p2, p5}, Lcom/amazon/krf/platform/ThumbnailRenderer;->setWrapsContent(Z)V

    .line 50
    invoke-interface {p1, v0}, Lcom/amazon/krf/platform/PageInfoProvider;->getPageInfoAt(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PageInfo;->getPageIndex()I

    move-result p1

    .line 51
    invoke-interface {p0, v0}, Lcom/amazon/krf/platform/KRFBook;->getContainerIDsForPosition(Lcom/amazon/krf/platform/Position;)Ljava/util/ArrayList;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p5, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    .line 60
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p6

    invoke-interface {p2, v2, p5, p6}, Lcom/amazon/krf/platform/ThumbnailRenderer;->thumbnailImageInRange(Lcom/amazon/krf/platform/PositionRange;II)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, v3

    aput-object p4, p5, v1

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p3

    long-to-double p3, p3

    long-to-double p0, p0

    sub-double/2addr p3, p0

    const-wide p0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, p5, v0

    const-string p0, "page clip rendered, startPosition=%s, endPosition=%s, time(ms)=%f"

    .line 61
    invoke-static {p0, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object p2

    :cond_0
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Required container %s missing. pageIndex=%d"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    new-instance p1, Lcom/amazon/kcp/reader/provider/BookImageRendererContainersMissingException;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/provider/BookImageRendererContainersMissingException;-><init>(Ljava/util/List;)V

    throw p1
.end method

.method public static renderThumbnail(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/PageInfoProvider;Lcom/amazon/krf/platform/ThumbnailRenderer;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 25
    invoke-interface {p2, p5}, Lcom/amazon/krf/platform/ThumbnailRenderer;->setWrapsContent(Z)V

    .line 26
    sget-object p5, Lcom/amazon/kcp/reader/provider/BookImageThumbnailRendering;->POINT_ZERO:Landroid/graphics/PointF;

    invoke-interface {p0, p1, p3, p5}, Lcom/amazon/krf/platform/KRFBook;->createPosition(Lcom/amazon/krf/platform/PageInfoProvider;ILandroid/graphics/PointF;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Lcom/amazon/krf/platform/KRFBook;->getContainerIDsForPosition(Lcom/amazon/krf/platform/Position;)Ljava/util/ArrayList;

    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    .line 36
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-interface {p2, p3, v2, p4}, Lcom/amazon/krf/platform/ThumbnailRenderer;->thumbnailImageAtPage(III)Landroid/graphics/Bitmap;

    move-result-object p2

    new-array p4, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v0

    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    long-to-double p0, p0

    sub-double/2addr v0, p0

    const-wide p0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, p4, p5

    const-string p0, "thumbnail rendered, pageIndex=%d, time(ms)=%f"

    .line 37
    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object p2

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p5

    const-string p2, "Required container %s missing. pageIndex=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    new-instance p1, Lcom/amazon/kcp/reader/provider/BookImageRendererContainersMissingException;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/provider/BookImageRendererContainersMissingException;-><init>(Ljava/util/List;)V

    throw p1
.end method
