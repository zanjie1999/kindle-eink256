.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "FinalizableWeakReference.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
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

    .line 39
    iget-object v0, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 40
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;->cleanUp()V

    return-void
.end method
