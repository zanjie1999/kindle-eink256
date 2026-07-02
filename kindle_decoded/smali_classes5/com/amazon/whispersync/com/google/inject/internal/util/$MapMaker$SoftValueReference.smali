.class Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftValueReference;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableSoftReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableSoftReference<",
        "TV;>;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1029
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$QueueHolder;->queue:Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;)V

    .line 1030
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftValueReference;->entry:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public copyFor(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1039
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftValueReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftValueReference;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftValueReference;->entry:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;->valueReclaimed()V

    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1043
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
