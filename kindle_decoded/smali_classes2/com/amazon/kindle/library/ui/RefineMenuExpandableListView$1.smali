.class Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView$1;
.super Ljava/lang/Object;
.source "RefineMenuExpandableListView.java"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView$1;->this$0:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryFilterStateChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;)V"
        }
    .end annotation

    .line 24
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView$1;->this$0:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
