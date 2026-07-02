.class Lcom/amazon/kcp/cover/BitmapCoverCache$1;
.super Ljava/lang/Object;
.source "BitmapCoverCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/BitmapCoverCache;->loadCover(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$update:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/BitmapCoverCache;Ljava/lang/String;Z)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    iput-object p2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$path:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$update:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v0}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$000(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    iget-boolean v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$update:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$update:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-virtual {v1}, Lcom/amazon/kcp/cover/BitmapCoverCache;->createBitmapOption()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v2}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$100(Lcom/amazon/kcp/cover/BitmapCoverCache;)[B

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 65
    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v2}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$200(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 66
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 67
    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$path:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 68
    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v2, v4, v5, v6}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$300(Lcom/amazon/kcp/cover/BitmapCoverCache;III)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_2
    const/4 v2, 0x0

    .line 74
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 75
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 76
    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$path:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    .line 78
    invoke-static {}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load cover iloadCovermage from disk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/cover/BitmapCoverCache;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v2}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$000(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$path:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$400()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add: cover cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v3}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$000(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v2}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$600(Lcom/amazon/kcp/cover/BitmapCoverCache;)Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v4}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$500(Lcom/amazon/kcp/cover/BitmapCoverCache;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v4

    iget-boolean v5, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$update:Z

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;->onCoverLoaded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V

    if-eqz v0, :cond_4

    .line 87
    iget-object v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v1}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$200(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v0, 0x0

    .line 92
    :cond_5
    iget-boolean v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$update:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v1}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$600(Lcom/amazon/kcp/cover/BitmapCoverCache;)Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v3}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$500(Lcom/amazon/kcp/cover/BitmapCoverCache;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v3

    iget-boolean v4, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$1;->val$update:Z

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;->onCoverLoaded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V

    :cond_6
    return-void
.end method
