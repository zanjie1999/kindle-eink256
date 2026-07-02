.class Lcom/amazon/kcp/search/enhancedsearch/Section$3;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/Section;->onSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

.field final synthetic val$result:Lcom/amazon/kindle/krx/search/ISearchResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kindle/krx/search/ISearchResult;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$3;->val$result:Lcom/amazon/kindle/krx/search/ISearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResultCount()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$600(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->logPerfMarkerReceivedResult()V

    .line 433
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$3;->val$result:Lcom/amazon/kindle/krx/search/ISearchResult;

    invoke-static {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->access$700(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kindle/krx/search/ISearchResult;)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section$3;->this$0:Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->cancelSearch()V

    :goto_0
    return-void
.end method
