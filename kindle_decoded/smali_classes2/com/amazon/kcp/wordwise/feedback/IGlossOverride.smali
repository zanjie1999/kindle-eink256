.class public interface abstract Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;
.super Ljava/lang/Object;
.source "IGlossOverride.java"


# virtual methods
.method public abstract addGlossOverride(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)V
.end method

.method public abstract close()V
.end method

.method public abstract open()Z
.end method

.method public abstract overrideSenses(Ljava/util/Map;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract truncateInstanceLevelOverride()V
.end method
