.class final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$updateGridForWidth$1;
.super Ljava/lang/Object;
.source "ExpandableLibraryResultsView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->updateGridForWidth(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$updateGridForWidth$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$updateGridForWidth$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getGridView()Lcom/amazon/kcp/search/views/GridRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$updateGridForWidth$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getAdapter()Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
