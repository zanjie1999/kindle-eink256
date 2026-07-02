.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

.field final synthetic val$actionID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->val$actionID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 985
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$800(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->val$actionID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    .line 988
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionsResultCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    .line 989
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getMetricsSearchStatus()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    .line 992
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$1000(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    .line 993
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$2300(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    .line 986
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;Lcom/amazon/kindle/krx/search/ISearchAdapter;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 995
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;->val$actionID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->recordMetricStateMetadataForSections(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    :cond_0
    return-void
.end method
