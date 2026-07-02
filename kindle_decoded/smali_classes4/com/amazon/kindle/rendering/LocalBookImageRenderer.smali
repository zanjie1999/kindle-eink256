.class public Lcom/amazon/kindle/rendering/LocalBookImageRenderer;
.super Ljava/lang/Object;
.source "LocalBookImageRenderer.java"

# interfaces
.implements Lcom/amazon/kindle/rendering/IBookImageRenderer;


# instance fields
.field private final krfBook:Lcom/amazon/krf/platform/KRFBook;

.field private final pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

.field private final thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/KRFBook;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    .line 29
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBook;->createPageInfoProvider()Lcom/amazon/krf/platform/PageInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    .line 30
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {v0}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    invoke-interface {p1, v0, v1}, Lcom/amazon/krf/platform/KRFBook;->createThumbnailRenderer(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageInfoProvider;)Lcom/amazon/krf/platform/ThumbnailRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;

    return-void
.end method


# virtual methods
.method public declared-synchronized getPageClip(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/reader/provider/BookImageThumbnailRendering;->renderPageClip(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/PageInfoProvider;Lcom/amazon/krf/platform/ThumbnailRenderer;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPageThumbnail(IIIZ)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    new-instance v4, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;

    move v3, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/reader/provider/BookImageThumbnailRendering;->renderThumbnail(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/PageInfoProvider;Lcom/amazon/krf/platform/ThumbnailRenderer;ILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II)",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public reset()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    invoke-interface {v0}, Lcom/amazon/krf/platform/Disposable;->dispose()V

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/rendering/LocalBookImageRenderer;->thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;

    invoke-interface {v0}, Lcom/amazon/krf/platform/Disposable;->dispose()V

    return-void
.end method
