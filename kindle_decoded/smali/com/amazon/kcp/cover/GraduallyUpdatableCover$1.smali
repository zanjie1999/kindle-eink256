.class Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;
.super Landroid/os/AsyncTask;
.source "GraduallyUpdatableCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->genTempLocalCoverAsync(Lcom/amazon/kindle/cover/ImageSizes$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

.field final synthetic val$imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    iput-object p2, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->val$imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 84
    iget-object p1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getBookid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;->getCover(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->access$000()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-virtual {v3}, Lcom/amazon/kcp/cover/UpdatableCover;->getBookid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Using cached temp local cover for [%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    iget-boolean p1, p1, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    if-nez p1, :cond_1

    .line 91
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p1, 0x0

    return-object p1

    .line 94
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-virtual {v2}, Lcom/amazon/kcp/cover/UpdatableCover;->getBookid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Gen temp local cover async for [%s]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-static {v0}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->access$100(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-static {v0}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->access$100(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kindle/model/content/IListableBook;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    .line 97
    invoke-static {v0}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->access$100(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/content/IListableBook;

    iget-object v1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-static {v1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->access$200(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->val$imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/cover/ICoverImageService;->buildLocalCover(Lcom/amazon/kindle/model/content/IListableBook;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    .line 98
    invoke-static {v0}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->access$200(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->val$imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->buildLocalCover(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->getBookid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;->putCover(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->setTempCover(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
