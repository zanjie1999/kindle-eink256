.class Lcom/amazon/kcp/search/SearchHelper$3$1;
.super Ljava/lang/Object;
.source "SearchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchHelper$3;->call(Lcom/amazon/kindle/callback/OperationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/SearchHelper$3;

.field final synthetic val$result:Lcom/amazon/kindle/callback/OperationResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchHelper$3;Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper$3$1;->this$1:Lcom/amazon/kcp/search/SearchHelper$3;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHelper$3$1;->val$result:Lcom/amazon/kindle/callback/OperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper$3$1;->val$result:Lcom/amazon/kindle/callback/OperationResult;

    invoke-virtual {v0}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/store/SearchSuggestionCompleteEvent;

    .line 120
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper$3$1;->this$1:Lcom/amazon/kcp/search/SearchHelper$3;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchHelper$3;->this$0:Lcom/amazon/kcp/search/SearchHelper;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/SearchSuggestionCompleteEvent;->getResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/search/ISearchResultListener;->onStoreSuggestionComplete(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
