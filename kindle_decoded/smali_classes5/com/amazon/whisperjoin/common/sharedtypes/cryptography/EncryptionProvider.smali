.class public interface abstract Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;
.super Ljava/lang/Object;
.source "EncryptionProvider.java"


# virtual methods
.method public abstract decrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/DecryptionFailedException;
        }
    .end annotation
.end method

.method public abstract encrypt([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionFailedException;
        }
    .end annotation
.end method
