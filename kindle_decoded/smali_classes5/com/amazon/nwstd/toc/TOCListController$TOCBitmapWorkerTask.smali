.class Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "TOCListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/toc/TOCListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TOCBitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final mArticle:Lcom/amazon/nwstd/toc/IArticleTOCItem;

.field final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/nwstd/ui/MaskedImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/nwstd/toc/TOCListController;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/toc/TOCListController;Lcom/amazon/nwstd/ui/MaskedImageView;Lcom/amazon/nwstd/toc/IArticleTOCItem;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 149
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    .line 150
    iput-object p3, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->mArticle:Lcom/amazon/nwstd/toc/IArticleTOCItem;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .line 156
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object v0, p1, Lcom/amazon/nwstd/toc/TOCListController;->mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->mArticle:Lcom/amazon/nwstd/toc/IArticleTOCItem;

    invoke-static {p1}, Lcom/amazon/nwstd/toc/TOCListController;->access$000(Lcom/amazon/nwstd/toc/TOCListController;)I

    move-result p1

    iget-object v2, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-static {v2}, Lcom/amazon/nwstd/toc/TOCListController;->access$100(Lcom/amazon/nwstd/toc/TOCListController;)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/nwstd/toc/TOCUtils;->createBitmapForArticleItem(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/nwstd/toc/IArticleTOCItem;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 129
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getArticle()Lcom/amazon/nwstd/toc/IArticleTOCItem;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->mArticle:Lcom/amazon/nwstd/toc/IArticleTOCItem;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 162
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/ui/MaskedImageView;

    .line 170
    invoke-static {v0}, Lcom/amazon/nwstd/toc/TOCListController;->access$200(Lcom/amazon/nwstd/ui/MaskedImageView;)Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;

    move-result-object v1

    if-ne p0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-static {v1}, Lcom/amazon/nwstd/toc/TOCListController;->access$300(Lcom/amazon/nwstd/toc/TOCListController;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->mArticle:Lcom/amazon/nwstd/toc/IArticleTOCItem;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object v2, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->mArticle:Lcom/amazon/nwstd/toc/IArticleTOCItem;

    invoke-static {v1, v2}, Lcom/amazon/nwstd/toc/TOCListController;->access$400(Lcom/amazon/nwstd/toc/TOCListController;Lcom/amazon/nwstd/toc/IArticleTOCItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/ui/MaskedImageView;->setEnabled(Z)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
