.class Lcom/amazon/kcp/search/SearchHelper$1$1;
.super Ljava/lang/Object;
.source "SearchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/SearchHelper$1;->call(Lcom/amazon/kindle/callback/OperationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/search/SearchHelper$1;

.field final synthetic val$result:Lcom/amazon/kindle/callback/OperationResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/SearchHelper$1;Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper$1$1;->this$1:Lcom/amazon/kcp/search/SearchHelper$1;

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchHelper$1$1;->val$result:Lcom/amazon/kindle/callback/OperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper$1$1;->val$result:Lcom/amazon/kindle/callback/OperationResult;

    invoke-virtual {v0}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper$1$1;->this$1:Lcom/amazon/kcp/search/SearchHelper$1;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchHelper$1;->this$0:Lcom/amazon/kcp/search/SearchHelper;

    iget-object v1, v1, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    .line 86
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->getTotal()I

    move-result v4

    .line 87
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->getSpellerMetadata()Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;->getStoreSearchResponseMetadata()Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    move-result-object v6

    .line 85
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/search/ISearchResultListener;->onStoreSearchComplete(Ljava/lang/String;Ljava/util/List;ILcom/amazon/kcp/search/store/model/SpellCorrectionInfo;Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;)V

    return-void
.end method
