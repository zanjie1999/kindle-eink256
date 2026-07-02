.class public interface abstract Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;
.super Ljava/lang/Object;
.source "TransferListener.kt"


# virtual methods
.method public abstract onBookTransferFinish(Lcom/amazon/kindle/content/ContentMetadata;Z)V
.end method

.method public abstract onBookTransferStart(Lcom/amazon/kindle/content/ContentMetadata;)V
.end method

.method public abstract onLibraryTransferFinish()V
.end method

.method public abstract onLibraryTransferStart(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation
.end method
