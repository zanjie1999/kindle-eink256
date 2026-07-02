.class Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;
.super Ljava/lang/Object;
.source "AutomaticUpdatePanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->onNextBatchFetched(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;Ljava/util/List;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->showRecycleView()V

    .line 306
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v1}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedListCount()I

    move-result v1

    sub-int/2addr v1, v0

    .line 309
    iget-object v2, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v2}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 312
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$200(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isLastPageFetched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->removeLoadingMore()V

    .line 314
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v1}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedListCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->showLoadingMore()V

    .line 320
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-static {v1}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->combinedListCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method
