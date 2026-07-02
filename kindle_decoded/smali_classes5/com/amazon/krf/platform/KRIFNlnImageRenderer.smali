.class public Lcom/amazon/krf/platform/KRIFNlnImageRenderer;
.super Ljava/lang/Object;
.source "KRIFNlnImageRenderer.java"

# interfaces
.implements Lcom/amazon/kindle/rendering/IBookImageRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/KRIFNlnImageRenderer$DisposableView;
    }
.end annotation


# static fields
.field private static final ALLOW_WHITEBOX_IMAGE:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_book:Lcom/amazon/krf/platform/KRFBook;

.field private m_docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Lcom/amazon/krf/platform/KRFBook;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;->m_docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 45
    iput-object p2, p0, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;->m_book:Lcom/amazon/krf/platform/KRFBook;

    return-void
.end method

.method private getBitmapForPage(Lcom/amazon/kindle/nln/IThumbnailPage;Lcom/amazon/krf/platform/KRIFThumbnailManager;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p2, p1, p3, v1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getUnmanagedViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;Landroid/graphics/Rect;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/platform/KRFPageView;

    if-nez p1, :cond_0

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 119
    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFPageView;->dispose()V

    return-object p2

    :cond_1
    return-object v0
.end method

.method private getThumbnailManager()Lcom/amazon/krf/platform/KRIFThumbnailManager;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;->m_docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    .line 51
    instance-of v1, v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lcom/amazon/krf/platform/KRIFThumbnailManager;

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Someone added a new thumbnail manager and didn\'t update the thumbnail renderer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public attachContainer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getPageClip(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageThumbnail(IIIZ)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .locals 4
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

    .line 128
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;->getThumbnailManager()Lcom/amazon/krf/platform/KRIFThumbnailManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->isPageIndexingComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 134
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, p3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    invoke-virtual {v0, p1, v1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->getUnmanagedViewForPosition(Lcom/amazon/kindle/krx/reader/IPosition;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object p1

    .line 136
    instance-of p2, p1, Lcom/amazon/krf/platform/KRFPageView;

    if-eqz p2, :cond_1

    new-instance v2, Lcom/amazon/krf/platform/KRIFNlnImageRenderer$DisposableView;

    check-cast p1, Lcom/amazon/krf/platform/KRFPageView;

    invoke-direct {v2, p1}, Lcom/amazon/krf/platform/KRIFNlnImageRenderer$DisposableView;-><init>(Lcom/amazon/krf/platform/KRFPageView;)V

    :cond_1
    return-object v2
.end method

.method public openDocument(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;->m_docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    .line 72
    iput-object v0, p0, Lcom/amazon/krf/platform/KRIFNlnImageRenderer;->m_book:Lcom/amazon/krf/platform/KRFBook;

    return-void
.end method
