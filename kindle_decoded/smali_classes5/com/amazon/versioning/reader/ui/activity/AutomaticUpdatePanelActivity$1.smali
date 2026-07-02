.class Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AutomaticUpdatePanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$1;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 81
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    .line 82
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    add-int/lit8 p1, p1, -0x1

    if-lt p2, p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$1;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-virtual {p1}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->loadMoreUpdateItem()V

    :cond_0
    return-void
.end method
