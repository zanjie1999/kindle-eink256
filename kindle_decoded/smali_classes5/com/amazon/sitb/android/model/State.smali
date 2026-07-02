.class public interface abstract Lcom/amazon/sitb/android/model/State;
.super Ljava/lang/Object;
.source "State.java"


# virtual methods
.method public abstract bookClosed(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract bookDeleted(Ljava/lang/String;Z)V
.end method

.method public abstract bookDownloadStateChanged(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract bookOpened(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract cancelFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelStarted(Ljava/lang/String;)V
.end method

.method public abstract cancelSucceeded(Ljava/lang/String;)V
.end method

.method public abstract downloadFailed(Ljava/lang/String;)V
.end method

.method public abstract downloadProgress(Ljava/lang/String;I)V
.end method

.method public abstract downloadSucceeded(Ljava/lang/String;)V
.end method

.method public abstract enter()V
.end method

.method public abstract exit()V
.end method

.method public abstract getBookState()Lcom/amazon/sitb/android/BookState;
.end method

.method public abstract overlayHidden()V
.end method

.method public abstract priceUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;)V
.end method

.method public abstract purchaseError(Ljava/lang/String;)V
.end method

.method public abstract purchaseFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract purchaseStarted(Ljava/lang/String;)V
.end method

.method public abstract purchaseSucceeded(Ljava/lang/String;Lcom/amazon/sitb/android/PurchaseRecord;)V
.end method

.method public abstract recentCancelTimeout(Ljava/lang/String;)V
.end method

.method public abstract seriesUpdated(Ljava/lang/String;Lcom/amazon/sitb/android/SeriesInfo;)V
.end method

.method public abstract setModel(Lcom/amazon/sitb/android/model/UpsellModel;)V
.end method
