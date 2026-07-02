.class Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy<",
        "TK;TV;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyEntry(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2108
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    iget v1, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    iget-object p2, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)V

    return-object v0
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2100
    check-cast p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    check-cast p3, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;->copyEntry(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object p1

    return-object p1
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 2118
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 2121
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getHash(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 2133
    iget p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    return p1
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .locals 0

    .line 2100
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;->getHash(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)I

    move-result p1

    return p1
.end method

.method public getKey(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 2127
    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->key:Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2100
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;->getKey(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNext(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2130
    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->next:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    return-object p1
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2100
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;->getNext(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 2115
    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2100
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;->getValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashKey(Ljava/lang/Object;)I
    .locals 0

    .line 2124
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public newEntry(Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2104
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)V

    return-object v0
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2100
    check-cast p3, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;->newEntry(Ljava/lang/Object;ILcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    move-result-object p1

    return-object p1
.end method

.method public setInternals(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Internals<",
            "TK;TV;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public setValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 2112
    iput-object p2, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2100
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleStrategy;->setValue(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$SimpleInternalEntry;Ljava/lang/Object;)V

    return-void
.end method
