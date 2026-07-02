.class public Lcom/amazon/sitb/android/model/CancelingState;
.super Lcom/amazon/sitb/android/model/AbstractState;
.source "CancelingState.java"


# instance fields
.field private final recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;)V
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
            "Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;",
            ")V"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/amazon/sitb/android/BookState;->CANCELING:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/sitb/android/model/AbstractState;-><init>(Lcom/amazon/sitb/android/BookState;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 29
    iput-object p4, p0, Lcom/amazon/sitb/android/model/CancelingState;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    return-void
.end method


# virtual methods
.method public bookDeleted(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public bookDownloadStateChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public cancelFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/amazon/sitb/android/model/CancelingState;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/cache/Cache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->setFailureCode(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/model/UpsellModel;->syncWithReaderState()V

    :cond_0
    return-void
.end method

.method public cancelSucceeded(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object v0, Lcom/amazon/sitb/android/BookState;->RECENTLY_CANCELED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, v0}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    :cond_0
    return-void
.end method

.method public downloadProgress(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public enter()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/amazon/sitb/android/model/CancelingState;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/sitb/android/CancelRecord;

    invoke-direct {v2}, Lcom/amazon/sitb/android/CancelRecord;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/cache/Cache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
