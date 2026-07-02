.class Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;
.super Ljava/util/concurrent/FutureTask;
.source "NoSicsImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/NoSicsImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageID:I

.field private final imageView:Landroid/widget/ImageView;

.field private volatile isTaskCancelled:Z

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;ILandroid/widget/ImageView;Ljava/io/File;)V
    .locals 1

    .line 111
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    .line 112
    new-instance v0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;

    invoke-direct {v0, p1, p2, p4}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$1;-><init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;ILjava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 147
    iput p2, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->imageID:I

    .line 148
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->imageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->isTaskCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;ILandroid/widget/ImageView;Ljava/io/File;Lcom/amazon/kcp/reader/ui/NoSicsImageCache$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;-><init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;ILandroid/widget/ImageView;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->imageID:I

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;)Landroid/widget/ImageView;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->isTaskCancelled:Z

    .line 178
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected done()V
    .locals 2

    .line 154
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->isTaskCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->this$0:Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->access$700(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask$2;-><init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public isTaskCancelled()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->isTaskCancelled:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
