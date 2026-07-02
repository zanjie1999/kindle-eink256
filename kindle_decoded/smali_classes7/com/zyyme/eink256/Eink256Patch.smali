.class public Lcom/zyyme/eink256/Eink256Patch;
.super Ljava/lang/Object;


# static fields
.field private static final MIN_SIZE:I = 0x40

.field private static sLoadAttempted:Z

.field private static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zyyme/eink256/Eink256Patch;->sLoadAttempted:Z

    sput-boolean v0, Lcom/zyyme/eink256/Eink256Patch;->sLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureLoaded()Z
    .locals 3

    sget-boolean v0, Lcom/zyyme/eink256/Eink256Patch;->sLoadAttempted:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zyyme/eink256/Eink256Patch;->sLoaded:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zyyme/eink256/Eink256Patch;->sLoadAttempted:Z

    :try_start_0
    const-string v1, "zyymeEink256"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-boolean v0, Lcom/zyyme/eink256/Eink256Patch;->sLoaded:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "zyymeEink256"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_2

    return-object p0

    :cond_2
    invoke-static {}, Lcom/zyyme/eink256/Eink256Patch;->ensureLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_6

    goto :goto_0

    :cond_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :goto_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object p0, v0

    :cond_4
    invoke-static {p0}, Lcom/zyyme/eink256/Eink256Native;->ditherBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "zyymeEink256"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public static processInPlace(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
