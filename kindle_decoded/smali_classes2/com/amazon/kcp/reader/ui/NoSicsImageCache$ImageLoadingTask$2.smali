.class Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;
.super Ljava/lang/Object;
.source "NoSicsImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;->this$1:Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;->this$1:Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->isTaskCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;->this$1:Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->access$500(Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;->this$1:Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->access$300(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;->this$1:Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->access$400(Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;->this$1:Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->access$600(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)[Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;->this$1:Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->access$400(Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method
