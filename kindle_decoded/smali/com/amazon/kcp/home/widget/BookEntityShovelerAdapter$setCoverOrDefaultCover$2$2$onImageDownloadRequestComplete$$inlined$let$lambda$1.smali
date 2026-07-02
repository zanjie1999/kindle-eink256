.class final Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "BookEntityShovelerAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->onImageDownloadRequestComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;->$it:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$cover:Lcom/amazon/kcp/home/ui/BookEntityCover;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;

    iget-object v1, v1, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;

    iget-object v1, v1, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2;->this$0:Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2;->$cover:Lcom/amazon/kcp/home/ui/BookEntityCover;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/BookEntityShovelerAdapter$setCoverOrDefaultCover$2$2$onImageDownloadRequestComplete$$inlined$let$lambda$1;->$it:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/ui/BookEntityCover;->setCoverImage(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
