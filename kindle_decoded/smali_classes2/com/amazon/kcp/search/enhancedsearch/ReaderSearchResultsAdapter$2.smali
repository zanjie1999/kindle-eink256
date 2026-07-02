.class Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$2;
.super Ljava/lang/Object;
.source "ReaderSearchResultsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->notifyCloseActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$2;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$2;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$2;->this$0:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;->requestActivityClose()V

    :cond_0
    return-void
.end method
