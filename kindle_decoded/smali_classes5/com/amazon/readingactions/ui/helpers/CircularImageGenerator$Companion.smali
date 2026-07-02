.class public final Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;
.super Ljava/lang/Object;
.source "CircularImageGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircularImageGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularImageGenerator.kt\ncom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1230#2:88\n1299#2,3:89\n1709#2,7:92\n1506#2,3:99\n*E\n*S KotlinDebug\n*F\n+ 1 CircularImageGenerator.kt\ncom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion\n*L\n32#1:88\n32#1,3:89\n33#1,7:92\n34#1,3:99\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;-><init>()V

    return-void
.end method

.method private final cropBitmapToBlock(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Bitmap.createBitmap(bitm\u2026ap.height, bitmap.height)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p1, v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "Bitmap.createBitmap(bitm\u2026tmap.width, bitmap.width)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static bridge synthetic getCircularBitmap$default(Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;Landroid/graphics/Bitmap;Landroid/content/res/Resources;IIILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;->getCircularBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyImages(Lcom/amazon/startactions/storage/ImageBatchDownloader;[Landroid/widget/ImageView;Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "imageBatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resources"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;

    invoke-direct {v0, p2, p3}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;-><init>([Landroid/widget/ImageView;Landroid/content/res/Resources;)V

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/storage/ImageBatchDownloader;->apply(Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;)V

    return-void
.end method

.method public final getCircularBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-le p3, p4, :cond_0

    .line 52
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "Bitmap.createBitmap(heig\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "Bitmap.createBitmap(widt\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 60
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    if-le p3, p4, :cond_1

    .line 63
    div-int/lit8 p4, p4, 0x2

    int-to-float p3, p4

    goto :goto_1

    .line 65
    :cond_1
    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    :goto_1
    const/4 p4, 0x1

    .line 68
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 70
    sget p4, Lcom/amazon/kindle/ea/R$color;->readingactions_image_background_color_white:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-virtual {v1, p3, p3, p3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;->cropBitmapToBlock(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method
