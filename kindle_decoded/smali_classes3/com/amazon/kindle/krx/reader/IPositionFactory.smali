.class public interface abstract Lcom/amazon/kindle/krx/reader/IPositionFactory;
.super Ljava/lang/Object;
.source "IPositionFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/krx/reader/IPosition;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract createFromSerializedString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract createFromString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
