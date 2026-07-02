.class public Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;
.super Lcom/amazon/kindle/cover/AbstractCoverBuilder;
.source "ByteArrayCoverBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private imageBuffer:[B

.field private imageBufferDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/model/content/IListableBook;[BLandroid/graphics/Bitmap;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/kindle/cover/AbstractCoverBuilder;-><init>(Lcom/amazon/kindle/cover/ICover;Lcom/amazon/kindle/model/content/IListableBook;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBufferDirty:Z

    .line 38
    iput-object p3, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBuffer:[B

    .line 40
    iget-object p3, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    invoke-interface {p3}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p3

    const/4 p4, 0x0

    .line 41
    invoke-static {p4}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v0

    .line 42
    invoke-static {p4}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object p4

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {p4, p3, v1}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result p3

    .line 43
    iget-object p4, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBuffer:[B

    invoke-static {p4}, Lcom/amazon/kcp/util/images/BitmapHelper;->getSourceSize([B)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object p4

    .line 49
    iget v1, p4, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    if-gt v1, v0, :cond_0

    iget v1, p4, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    if-le v1, p3, :cond_2

    .line 50
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byte array image is too large for content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Required dimensions: "

    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x78

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Actual dimensions: "

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p2, p4, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    sget-object p2, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBuffer:[B

    invoke-direct {p0, p2, p4, v0, p3}, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->createScaledBitmapFromBuffer([BLcom/amazon/kindle/util/drawing/Dimension;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    iput-boolean p1, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBufferDirty:Z

    :cond_2
    return-void
.end method

.method private createScaledBitmapFromBuffer([BLcom/amazon/kindle/util/drawing/Dimension;II)Landroid/graphics/Bitmap;
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 64
    invoke-static {p3, p4, v0}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(IIF)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object p3

    .line 63
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap([BLcom/amazon/kindle/util/drawing/Dimension;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getImageBuffer()[B
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBuffer:[B

    return-object v0
.end method

.method public persistToDisk(Lcom/amazon/kindle/cover/dao/CoverDAO;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBufferDirty:Z

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    invoke-virtual {p0, p1, v2}, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->writeBitmapToFile(Lcom/amazon/kindle/cover/dao/CoverDAO;Lcom/amazon/kindle/cover/ICover;)Z

    move-result v1

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    invoke-interface {v3}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    invoke-interface {v5}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBuffer:[B

    invoke-virtual {v4, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 84
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 85
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 91
    :try_start_2
    iget-object v2, p0, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->cover:Lcom/amazon/kindle/cover/ICover;

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/cover/dao/CoverDAO;->insertOrUpdate(Lcom/amazon/kindle/cover/ICover;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-object v0, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 96
    :goto_1
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    throw p1

    .line 96
    :catch_1
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1
.end method

.method public setDecorated(Z)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lcom/amazon/kindle/cover/AbstractCoverBuilder;->setDecorated(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/amazon/kindle/cover/ByteArrayCoverBuilder;->imageBufferDirty:Z

    :cond_0
    return-void
.end method
