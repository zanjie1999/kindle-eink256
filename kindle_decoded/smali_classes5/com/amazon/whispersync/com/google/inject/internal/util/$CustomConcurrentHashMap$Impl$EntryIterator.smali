.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$EntryIterator;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
        "TK;TV;TE;>.HashIterator;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V
    .locals 0

    .line 1773
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$EntryIterator;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1773
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1777
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextEntry()Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
