.class public Lcom/amazon/kcp/cover/BitmapCoverBuilder;
.super Lcom/amazon/kindle/cover/AbstractCoverBuilder;
.source "BitmapCoverBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kcp/cover/BitmapCoverBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/BitmapCoverBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/cover/Cover;Lcom/amazon/kindle/model/content/IListableBook;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/cover/AbstractCoverBuilder;-><init>(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/model/content/IListableBook;Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {p1}, Lcom/amazon/kindle/cover/Cover;->getCoverSize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 34
    invoke-static {p3}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v0

    .line 35
    invoke-static {p3}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v1

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result p1

    .line 38
    iget-object p2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-gt p2, v0, :cond_0

    iget-object p2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-le p2, p1, :cond_1

    .line 40
    :cond_0
    new-instance p2, Lcom/amazon/kindle/util/drawing/Dimension;

    iget-object v1, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p2, v1, v2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    .line 42
    invoke-static {v0, p1}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object p1

    .line 40
    invoke-static {p2, p1}, Lcom/amazon/kcp/util/images/BitmapHelper;->getScaledSize(Lcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    const/4 v1, 0x1

    invoke-static {p2, v0, p1, v1, p3}, Lcom/amazon/kcp/util/images/BitmapHelper;->createDitheredScaledBitmap(Landroid/graphics/Bitmap;IIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method


# virtual methods
.method public persistToDisk(Lcom/amazon/kindle/cover/dao/CoverDAO;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->writeBitmapToFile(Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ICover;)Z

    move-result p1

    return p1
.end method
