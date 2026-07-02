.class Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon$1;
.super Ljava/lang/Object;
.source "ThumbnailGridViewCommon.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/GridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon$1;->this$0:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon$1;->this$0:Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;

    invoke-static {v0}, Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;->access$000(Lcom/amazon/nwstd/thumbnailGrid/ThumbnailGridViewCommon;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;

    .line 64
    check-cast p1, Lcom/amazon/android/widget/ThumbnailItem;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;->onRecycle(Lcom/amazon/android/widget/ThumbnailItem;)V

    :cond_0
    return-void
.end method
