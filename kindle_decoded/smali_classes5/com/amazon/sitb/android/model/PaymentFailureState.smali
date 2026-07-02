.class public Lcom/amazon/sitb/android/model/PaymentFailureState;
.super Lcom/amazon/sitb/android/model/AbstractState;
.source "PaymentFailureState.java"


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

    .line 20
    sget-object v0, Lcom/amazon/sitb/android/BookState;->PAYMENT_FAILURE:Lcom/amazon/sitb/android/BookState;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/sitb/android/model/AbstractState;-><init>(Lcom/amazon/sitb/android/BookState;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/cache/Cache;Lcom/amazon/sitb/android/services/BookIdParser;)V

    return-void
.end method


# virtual methods
.method public overlayHidden()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/amazon/sitb/android/model/AbstractState;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    sget-object v1, Lcom/amazon/sitb/android/BookState;->UNOWNED:Lcom/amazon/sitb/android/BookState;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/model/UpsellModel;->transition(Lcom/amazon/sitb/android/BookState;)V

    return-void
.end method
