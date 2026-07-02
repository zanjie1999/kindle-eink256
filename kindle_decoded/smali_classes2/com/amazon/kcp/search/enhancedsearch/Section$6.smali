.class Lcom/amazon/kcp/search/enhancedsearch/Section$6;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/Section;->onSearchFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/Section;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 474
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$202(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)Z

    .line 475
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$600(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->updateSectionStartPositions()V

    .line 476
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$600(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 478
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$600(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->logPerfMarkerSectionFinished()V

    .line 480
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->didStartSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$900(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$800(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordDetailedMetadata(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$1002(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)Z

    return-void
.end method
