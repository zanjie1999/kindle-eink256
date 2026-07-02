.class public Lcom/amazon/sitb/android/model/ClosedState;
.super Lcom/amazon/sitb/android/model/AbstractState;
.source "ClosedState.java"


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;",
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;",
            "Lcom/amazon/sitb/android/services/BookIdParser;",
            ")V"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/amazon/sitb/android/BookState;->CLOSED:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/sitb/android/model/AbstractState;-><init>(Lcom/amazon/sitb/android/BookState;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    return-void
.end method


# virtual methods
.method public bookClosed(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public bookDeleted(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public bookDownloadStateChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public bookOpened(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 10

    .line 100
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v3, p0, Lcom/amazon/sitb/android/model/AbstractState;->priceCache:Lcom/amazon/sitb/android/cache/Cache;

    invoke-virtual {v3, v1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/sitb/android/BookPrice;

    move-object v7, v0

    move-object v6, v1

    move-object v8, v3

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->seriesCache:Lcom/amazon/sitb/android/cache/Cache;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/SeriesInfo;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/amazon/sitb/android/SeriesInfo;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookTitle()Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/amazon/sitb/android/model/AbstractState;->priceCache:Lcom/amazon/sitb/android/cache/Cache;

    invoke-virtual {v3, v1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/sitb/android/BookPrice;

    .line 114
    invoke-virtual {v0}, Lcom/amazon/sitb/android/SeriesInfo;->getShowAtPercentRead()I

    move-result v0

    move v9, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    :goto_0
    const/4 v9, 0x0

    .line 118
    :goto_1
    iget-object v4, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/sitb/android/model/UpsellModel;->startUpsellingBook(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;I)V

    return-void
.end method

.method public cancelFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public cancelStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public cancelSucceeded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public downloadFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public downloadProgress(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public downloadSucceeded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public enter()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->reset()V

    return-void
.end method

.method public priceUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;)V
    .locals 0

    return-void
.end method

.method public purchaseError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public purchaseFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public purchaseStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public purchaseSucceeded(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;)V
    .locals 0

    return-void
.end method

.method public seriesUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/SeriesInfo;)V
    .locals 0

    return-void
.end method
