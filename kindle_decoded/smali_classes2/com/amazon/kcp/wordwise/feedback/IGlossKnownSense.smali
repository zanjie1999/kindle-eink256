.class public interface abstract Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;
.super Ljava/lang/Object;
.source "IGlossKnownSense.java"


# virtual methods
.method public abstract addKnownSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V
.end method

.method public abstract close()V
.end method

.method public abstract isOpen()Z
.end method

.method public abstract suppressSenses(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;)V"
        }
    .end annotation
.end method
