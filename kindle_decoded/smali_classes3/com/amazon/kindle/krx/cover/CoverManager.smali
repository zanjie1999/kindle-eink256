.class public Lcom/amazon/kindle/krx/cover/CoverManager;
.super Ljava/lang/Object;
.source "CoverManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/cover/ICoverManager;


# instance fields
.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private service:Lcom/amazon/kindle/cover/ICoverImageService;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/krx/cover/CoverManager;->service:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 33
    iput-object p2, p0, Lcom/amazon/kindle/krx/cover/CoverManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method


# virtual methods
.method public getCoverAsBitmap(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/cover/CoverManager;->getCoverAsStream(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCoverAsStream(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Ljava/io/InputStream;
    .locals 1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/cover/CoverManager;->getCoverFilePath(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object p2
.end method

.method public getCoverFilePath(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/krx/cover/CoverManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/krx/cover/CoverManager;->service:Lcom/amazon/kindle/cover/ICoverImageService;

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/krx/cover/CoverManager;->getCoverType(Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method getCoverType(Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 1

    if-nez p1, :cond_0

    .line 93
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1

    .line 95
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/cover/CoverManager$1;->$SwitchMap$com$amazon$kindle$krx$cover$ICoverManager$CoverImageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 105
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1

    .line 102
    :cond_1
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1

    .line 97
    :cond_2
    sget-object p1, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p1
.end method
