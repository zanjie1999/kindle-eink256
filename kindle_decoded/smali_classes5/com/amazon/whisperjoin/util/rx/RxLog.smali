.class public Lcom/amazon/whisperjoin/util/rx/RxLog;
.super Ljava/lang/Object;
.source "RxLog.java"


# direct methods
.method public static doOnComplete(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Action;
    .locals 1

    .line 52
    new-instance v0, Lcom/amazon/whisperjoin/util/rx/RxLog$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/util/rx/RxLog$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static doOnError(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/amazon/whisperjoin/util/rx/RxLog$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/util/rx/RxLog$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static doOnNext(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/amazon/whisperjoin/util/rx/RxLog$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/util/rx/RxLog$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static doOnSubscribe(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/util/rx/RxLog$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/util/rx/RxLog$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static doOnSuccess(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/amazon/whisperjoin/util/rx/RxLog$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperjoin/util/rx/RxLog$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
