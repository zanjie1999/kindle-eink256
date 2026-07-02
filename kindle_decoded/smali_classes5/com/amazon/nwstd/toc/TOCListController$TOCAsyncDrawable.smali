.class Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "TOCListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/toc/TOCListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TOCAsyncDrawable"
.end annotation


# instance fields
.field private final bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 214
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getBitmapWorkerTask()Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;->bitmapWorkerTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;

    return-object v0
.end method
