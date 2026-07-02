.class Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;
.super Ljava/lang/Object;
.source "AbstractCoverCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/AbstractCoverCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverImageScalingRequest"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;

.field private height:I

.field private imagePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p3, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->bookId:Ljava/lang/String;

    .line 748
    iput-object p2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->imagePath:Ljava/lang/String;

    .line 749
    iput p4, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->width:I

    .line 750
    iput p5, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->height:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 755
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->access$200(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;)Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->bookId:Ljava/lang/String;

    .line 756
    invoke-interface {v0, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->getMediumCoverLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 759
    iget v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->width:I

    iget v2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->height:I

    .line 760
    invoke-static {v1, v2}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/images/BitmapHelper;->createScaledBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 762
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 765
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 766
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 767
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 770
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 771
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    invoke-static {v0}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->access$300(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 772
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/CoverLruCache;

    if-eqz v0, :cond_0

    .line 773
    iget-object v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/CoverLruCache;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/CoverLruCache;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 777
    invoke-static {}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error scaling cover"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
