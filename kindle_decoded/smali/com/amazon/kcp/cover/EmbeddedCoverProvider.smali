.class public Lcom/amazon/kcp/cover/EmbeddedCoverProvider;
.super Ljava/lang/Object;
.source "EmbeddedCoverProvider.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverProvider;


# static fields
.field private static final MIN_COVER_HEIGHT_FACTOR:F = 0.8f

.field private static final MIN_COVER_WIDTH_FACTOR:F = 0.8f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private imageFactory:Lcom/amazon/kindle/util/drawing/ImageFactory;

.field private imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

.field private libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kcp/library/IAndroidLibraryController;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageFactory:Lcom/amazon/kindle/util/drawing/ImageFactory;

    .line 39
    iput-object v0, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    .line 40
    iput-object v0, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageFactory:Lcom/amazon/kindle/util/drawing/ImageFactory;

    .line 45
    iput-object p2, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    .line 46
    invoke-static {v0}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->ensureRequiredFields()V

    return-void
.end method

.method private ensureRequiredFields()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageFactory:Lcom/amazon/kindle/util/drawing/ImageFactory;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "imageSizes is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "libraryController is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "imageFactory is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 74
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 80
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverId(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-interface {p3, p1, p2}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v4

    .line 86
    :try_start_0
    iget-object p3, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-interface {p3, v2}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3
    :try_end_0
    .catch Lcom/amazon/kcp/library/models/DocumentOpenTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 88
    sget-object v1, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->TAG:Ljava/lang/String;

    const-string v5, "Failed to open the book in time"

    invoke-static {v1, v5, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    const-class v1, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DocumentOpenTimeoutFailure"

    invoke-virtual {p3, v1, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_3

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v1

    .line 94
    iget-object v5, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v5

    .line 95
    new-instance v6, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v6, v1, v5}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 96
    iget-object v7, p0, Lcom/amazon/kcp/cover/EmbeddedCoverProvider;->imageFactory:Lcom/amazon/kindle/util/drawing/ImageFactory;

    invoke-interface {p3, v7, v6}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;

    move-result-object p3

    check-cast p3, Lcom/mobipocket/android/drawing/AndroidImage;

    if-eqz p3, :cond_3

    .line 99
    invoke-interface {p3}, Lcom/mobipocket/android/drawing/AndroidImage;->getBitmapImage()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 101
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v1, v1

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v7

    cmpl-float v1, v6, v1

    if-gez v1, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v5, v5

    mul-float v5, v5, v7

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    .line 102
    :cond_2
    new-instance v0, Lcom/amazon/kindle/cover/Cover;

    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object p2, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->EMBEDDED:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/cover/Cover;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance p2, Lcom/amazon/kcp/cover/BitmapCoverBuilder;

    invoke-direct {p2, v0, p1, p3}, Lcom/amazon/kcp/cover/BitmapCoverBuilder;-><init>(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/model/content/IListableBook;Landroid/graphics/Bitmap;)V

    move-object v0, p2

    :cond_3
    if-eqz v0, :cond_5

    .line 109
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 110
    :goto_1
    invoke-interface {v0, p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->setCanBeDecorated(Z)V

    :cond_5
    return-object v0
.end method

.method public getCoverType()Lcom/amazon/kindle/cover/ICoverImageService$CoverType;
    .locals 1

    .line 118
    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->EMBEDDED:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    return-object v0
.end method

.method public isRemoteProvider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
