.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizablePhantomReference;
.super Ljava/lang/ref/PhantomReference;
.source "FinalizablePhantomReference.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/PhantomReference<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReference;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;",
            ")V"
        }
    .end annotation

    .line 43
    iget-object v0, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 44
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;->cleanUp()V

    return-void
.end method
