.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;
.super Ljava/lang/Object;
.source "PrivateElements.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/Element;


# virtual methods
.method public abstract getElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExposedKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getExposedSource(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getInjector()Lcom/amazon/whispersync/com/google/inject/Injector;
.end method
