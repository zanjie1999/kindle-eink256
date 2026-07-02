.class public interface abstract Lcom/amazon/kcp/library/LargeLibraryCounterProvider;
.super Ljava/lang/Object;
.source "LargeLibraryCounterProvider.kt"


# virtual methods
.method public abstract allBooksCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract allItemsCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract audibleCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract backIssuesCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract backIssuesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;
.end method

.method public abstract booksCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract collectionsCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract cuCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract docsCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract falkorCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract newsstandCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract onDeviceBooksCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract onDeviceCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract onDeviceNewsstandCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract ownersLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract personalLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract primeKUCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract publicLibraryLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract rentalCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract samplesCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation
.end method

.method public abstract seriesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;
.end method
