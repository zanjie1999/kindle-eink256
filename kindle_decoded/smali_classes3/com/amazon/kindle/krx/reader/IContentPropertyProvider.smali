.class public interface abstract Lcom/amazon/kindle/krx/reader/IContentPropertyProvider;
.super Ljava/lang/Object;
.source "IContentPropertyProvider.java"


# virtual methods
.method public abstract getProperty(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPropertyKeys()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
