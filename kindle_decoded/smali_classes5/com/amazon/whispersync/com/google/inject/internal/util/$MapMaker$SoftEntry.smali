.class Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableSoftReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableSoftReference<",
        "TK;>;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals<",
            "TK;TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals<",
            "TK;TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;>;TK;I)V"
        }
    .end annotation

    .line 888
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$QueueHolder;->queue:Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$FinalizableReferenceQueue;)V

    .line 905
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->access$600()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;->valueReference:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    .line 889
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    .line 890
    iput p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;->hash:I

    return-void
.end method


# virtual methods
.method public finalizeReferent()V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHash()I
    .locals 1

    .line 921
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 894
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueReference()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;->valueReference:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 912
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;->valueReference:Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;

    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$SoftEntry;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
