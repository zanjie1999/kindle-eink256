.class final Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;
.super Ljava/lang/Object;
.source "BookEntityShovelerAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->setCoverOrDefaultCover(Lcom/amazon/kcp/home/ui/BookEntityCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cover:Lcom/amazon/kcp/home/ui/BookEntityCover;

.field final synthetic $filename:Ljava/lang/String;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/ui/BookEntityCover;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$cover:Lcom/amazon/kcp/home/ui/BookEntityCover;

    iput-object p5, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->access$readAndCacheBitmapFromFile(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->access$getThreadPoolManager$p(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;)Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$$special$$inlined$let$lambda$1;

    invoke-direct {v2, v0, p0}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$$special$$inlined$let$lambda$1;-><init>(Landroid/graphics/Bitmap;Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 219
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 220
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;->access$getImageProvider$p(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter;)Lcom/amazon/kcp/home/util/CardImageProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$filename:Ljava/lang/String;

    new-instance v6, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;

    invoke-direct {v6, p0, v0, v1}, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;-><init>(Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;J)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazon/kcp/home/util/CardImageProvider;->getImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/util/ImageDownloadCallback;)V

    return-void
.end method
