.class Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;
.super Ljava/lang/Object;
.source "NoSicsImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;-><init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;ILandroid/widget/ImageView;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmapFile:Ljava/io/File;

.field final synthetic val$imageID:I

.field final synthetic val$this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;ILjava/io/File;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    iput p2, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$imageID:I

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$bitmapFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 118
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 119
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->access$300(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$imageID:I

    aget-object v1, v1, v2

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$bitmapFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    .line 134
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 137
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 138
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$bitmapFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->access$300(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;->val$imageID:I

    aput-object v2, v0, v1

    :cond_1
    return-void
.end method
