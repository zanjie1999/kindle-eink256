.class Lcom/amazon/kcp/cover/BitmapCoverCache$2;
.super Ljava/lang/Object;
.source "BitmapCoverCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/BitmapCoverCache;->unloadCover(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/BitmapCoverCache;Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$2;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    iput-object p2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$2;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v0}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$600(Lcom/amazon/kcp/cover/BitmapCoverCache;)Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$2;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;->onCoverRemoved(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$2;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v0}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$000(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$2;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    invoke-static {}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$400()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove: cover cache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$2;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v2}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$000(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache$2;->this$0:Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v1}, Lcom/amazon/kcp/cover/BitmapCoverCache;->access$200(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
