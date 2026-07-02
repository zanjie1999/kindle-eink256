.class public interface abstract Lcom/amazon/kindle/krx/providers/IProviderRegistry;
.super Ljava/lang/Object;
.source "IProviderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "P::",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "TT;TV;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TT;"
        }
    .end annotation
.end method

.method public abstract getAll(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract register(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation
.end method
