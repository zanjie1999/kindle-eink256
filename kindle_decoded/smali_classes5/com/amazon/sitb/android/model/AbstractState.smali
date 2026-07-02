.class public abstract Lcom/amazon/sitb/android/model/AbstractState;
.super Ljava/lang/Object;
.source "AbstractState.java"

# interfaces
.implements Lcom/amazon/sitb/android/model/State;


# instance fields
.field protected final bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

.field protected final bookState:Lcom/amazon/sitb/android/BookState;

.field protected model:Lcom/amazon/sitb/android/model/UpsellModel;

.field protected final priceCache:Lcom/amazon/sitb/android/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/BookPrice;",
            ">;"
        }
    .end annotation
.end field

.field protected final seriesCache:Lcom/amazon/sitb/android/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/cache/Cache<",
            "Lcom/amazon/sitb/android/SeriesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/BookState;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/BookState;",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->bookState:Lcom/amazon/sitb/android/BookState;

    .line 32
    iput-object p2, p0, Lcom/amazon/sitb/android/model/AbstractState;->priceCache:Lcom/amazon/sitb/android/cache/Cache;

    .line 33
    iput-object p3, p0, Lcom/amazon/sitb/android/model/AbstractState;->seriesCache:Lcom/amazon/sitb/android/cache/Cache;

    .line 34
    iput-object p4, p0, Lcom/amazon/sitb/android/model/AbstractState;->bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

    return-void
.end method


# virtual methods
.method public bookClosed(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isSameBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object v0, Lcom/amazon/sitb/android/BookState;->CLOSED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%s: Unexpected input"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bookDeleted(Ljava/lang/String;Z)V
    .locals 0

    .line 186
    iget-object p2, p0, Lcom/amazon/sitb/android/model/AbstractState;->bookIdParser:Lcom/amazon/sitb/android/services/BookIdParser;

    invoke-virtual {p2, p1}, Lcom/amazon/sitb/android/services/BookIdParser;->parse(Ljava/lang/String;)Lcom/amazon/sitb/android/services/BookIdParser$Info;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/amazon/sitb/android/services/BookIdParser$Info;->isFullBook()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/sitb/android/services/BookIdParser$Info;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->syncWithReaderState()V

    :cond_0
    return-void
.end method

.method public bookDownloadStateChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 177
    invoke-static {p1}, Lcom/amazon/sitb/android/utils/BookUtils;->isFullBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->transitionToReaderState(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method

.method public bookOpened(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public cancelFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string v0, "%s: Unexpected input"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelStarted(Ljava/lang/String;)V
    .locals 2

    .line 133
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%s: Unexpected input"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelSucceeded(Ljava/lang/String;)V
    .locals 2

    .line 139
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%s: Unexpected input"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadFailed(Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%s: Unexpected input"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadProgress(Ljava/lang/String;I)V
    .locals 1

    .line 127
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string v0, "%s: Unexpected input"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadSucceeded(Ljava/lang/String;)V
    .locals 2

    .line 115
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%s: Unexpected input"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enter()V
    .locals 0

    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public getBookState()Lcom/amazon/sitb/android/BookState;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->bookState:Lcom/amazon/sitb/android/BookState;

    return-object v0
.end method

.method public overlayHidden()V
    .locals 0

    return-void
.end method

.method public priceUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->setUpsellPrice(Lcom/amazon/sitb/android/BookPrice;)V

    :cond_0
    return-void
.end method

.method public purchaseError(Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object v0, Lcom/amazon/sitb/android/BookState;->PAYMENT_ERROR:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    :cond_0
    return-void
.end method

.method public purchaseFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string v0, "%s: Unexpected input"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purchaseStarted(Ljava/lang/String;)V
    .locals 2

    .line 88
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%s: Unexpected input"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public purchaseSucceeded(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;)V
    .locals 1

    .line 94
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string v0, "%s: Unexpected input"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recentCancelTimeout(Ljava/lang/String;)V
    .locals 2

    .line 151
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%s: Unexpected input"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seriesUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/SeriesInfo;)V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/BookUtils;->isFullBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 67
    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->hasUpsellBook()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->setUpsellTitle(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getShowAtPercentRead()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->setShowAtPercentRead(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 77
    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookTitle()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->priceCache:Lcom/amazon/sitb/android/cache/Cache;

    .line 79
    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getNextBookAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/amazon/sitb/android/BookPrice;

    .line 80
    invoke-virtual {p2}, Lcom/amazon/sitb/android/SeriesInfo;->getShowAtPercentRead()I

    move-result v5

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/sitb/android/model/UpsellModel;->startUpsellingBook(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModel(Lcom/amazon/sitb/android/model/UpsellModel;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/amazon/sitb/android/model/AbstractState;->getBookState()Lcom/amazon/sitb/android/BookState;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
