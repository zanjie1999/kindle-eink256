.class final enum Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength$3;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$Strength;-><init>(Ljava/lang/String;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 378
    check-cast p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;

    if-nez p3, :cond_0

    .line 379
    new-instance p3, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;

    iget-object v0, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    iget p2, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;->hash:I

    invoke-direct {p3, v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedStrongEntry;

    iget-object v1, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;->internals:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;

    iget p2, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;->hash:I

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedStrongEntry;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)V

    move-object p3, v0

    :goto_0
    return-object p3
.end method

.method equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 358
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method hash(Ljava/lang/Object;)I
    .locals 0

    .line 361
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method newEntry(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals<",
            "TK;TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;>;TK;I",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 370
    new-instance p4, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongEntry;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedStrongEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$LinkedStrongEntry;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;)V

    move-object p4, v0

    :goto_0
    return-object p4
.end method

.method referenceValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ReferenceEntry<",
            "TK;TV;>;TV;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 365
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongValueReference;

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker$StrongValueReference;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
