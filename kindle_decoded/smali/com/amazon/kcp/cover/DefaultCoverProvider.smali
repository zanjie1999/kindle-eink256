.class public Lcom/amazon/kcp/cover/DefaultCoverProvider;
.super Ljava/lang/Object;
.source "DefaultCoverProvider.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverProvider;


# instance fields
.field private cachedOriginalBitmaps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/DefaultCoverProvider;->cachedOriginalBitmaps:Ljava/util/WeakHashMap;

    return-void
.end method

.method private generateCover(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 5

    .line 49
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v2, :cond_0

    .line 54
    move-object v2, p2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, p2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v3, :cond_1

    .line 58
    move-object v1, p2

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDefaultCoverBackgroundProvider()Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;

    move-result-object v3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    :goto_1
    if-eqz p3, :cond_3

    move-object v4, p3

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    :goto_2
    invoke-interface {v3, v0, v2, v1, v4}, Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;->getImageResource(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)I

    move-result v0

    .line 66
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/kcp/cover/DefaultCoverProvider;->getScaledBitmapCoverBuilder(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/model/content/IListableBook;ILcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    return-object p1
.end method

.method private getScaledBitmapCoverBuilder(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/model/content/IListableBook;ILcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/cover/DefaultCoverProvider;->cachedOriginalBitmaps:Ljava/util/WeakHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/amazon/kcp/util/IOUtils;->createBitmapFromDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/amazon/kcp/cover/DefaultCoverProvider;->cachedOriginalBitmaps:Ljava/util/WeakHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr p3, v1

    int-to-float p3, p3

    const/4 v1, 0x0

    .line 76
    invoke-static {v1}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 78
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    .line 76
    :goto_0
    invoke-virtual {v1, p4, v2}, Lcom/amazon/kindle/cover/ImageSizes;->getDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p4

    .line 79
    iget v1, p4, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    iget v2, p4, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    div-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v4, p3, v3

    if-lez v4, :cond_2

    int-to-float v1, v1

    div-float/2addr v1, p3

    float-to-int p3, v1

    .line 83
    iput p3, p4, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    goto :goto_1

    :cond_2
    cmpg-float v1, p3, v3

    if-gez v1, :cond_3

    int-to-float v1, v2

    mul-float v1, v1, p3

    float-to-int p3, v1

    .line 85
    iput p3, p4, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    .line 88
    :cond_3
    :goto_1
    new-instance p3, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    sget-object v1, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;->Fit:Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;

    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    iget v3, p4, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p4, p4, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-direct {v2, v3, p4}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p3, v1, v2, p4}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;-><init>(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingPolicy;Lcom/amazon/kindle/util/drawing/Dimension;F)V

    invoke-static {v0, p3}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 91
    new-instance p4, Lcom/amazon/kcp/cover/BitmapCoverBuilder;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/kcp/cover/BitmapCoverBuilder;-><init>(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/model/content/IListableBook;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 92
    invoke-interface {p4, p1}, Lcom/amazon/kindle/cover/ICoverBuilder;->setCanBeDecorated(Z)V

    return-object p4
.end method


# virtual methods
.method public getCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;
    .locals 6

    .line 36
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {v1}, Lcom/amazon/kindle/cover/CoverImageService;->getCoverId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {p3, p1, p2}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v3

    .line 41
    new-instance p3, Lcom/amazon/kindle/cover/Cover;

    invoke-virtual {p2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/cover/Cover;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/kcp/cover/DefaultCoverProvider;->generateCover(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/cover/ICoverBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getCoverType()Lcom/amazon/kindle/cover/ICoverImageService$CoverType;
    .locals 1

    .line 99
    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    return-object v0
.end method

.method public isRemoteProvider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
