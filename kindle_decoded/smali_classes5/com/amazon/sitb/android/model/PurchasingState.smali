.class public Lcom/amazon/sitb/android/model/PurchasingState;
.super Lcom/amazon/sitb/android/model/AbstractState;
.source "PurchasingState.java"


# instance fields
.field private final goToUnownedOnFailure:Z

.field private final readerActions:Lcom/amazon/sitb/android/ReaderActions;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/ReaderActions;ZLcom/amazon/sitb/android/services/BookIdParser;)V
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
            "Lcom/amazon/sitb/android/ReaderActions;",
            "Z",
            "Lcom/amazon/sitb/android/services/BookIdParser;",
            ")V"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/amazon/sitb/android/BookState;->PURCHASING:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v0, p1, p2, p5}, Lcom/amazon/sitb/android/model/AbstractState;-><init>(Lcom/amazon/sitb/android/BookState;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    .line 31
    iput-object p3, p0, Lcom/amazon/sitb/android/model/PurchasingState;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    .line 32
    iput-boolean p4, p0, Lcom/amazon/sitb/android/model/PurchasingState;->goToUnownedOnFailure:Z

    return-void
.end method


# virtual methods
.method public bookDownloadStateChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public purchaseFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    iget-boolean p1, p0, Lcom/amazon/sitb/android/model/PurchasingState;->goToUnownedOnFailure:Z

    if-eqz p1, :cond_1

    const-string p1, "mfa-challenge-required"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object p2, Lcom/amazon/sitb/android/BookState;->UNOWNED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->setFailureCode(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object p2, Lcom/amazon/sitb/android/BookState;->PAYMENT_FAILURE:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public purchaseSucceeded(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/amazon/sitb/android/model/PurchasingState;->readerActions:Lcom/amazon/sitb/android/ReaderActions;

    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/model/UpsellModel;->getUpsellAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object p2, Lcom/amazon/sitb/android/BookState;->PAYMENT_ERROR:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v0, p2}, Lcom/amazon/sitb/android/model/UpsellModel;->setPurchaseRecord(Lcom/amazon/sitb/android/PurchaseRecord;)V

    .line 48
    iget-object p2, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {p2, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->transitionToReaderState(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_1
    :goto_0
    return-void
.end method
