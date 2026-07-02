.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$ValueIterator;
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
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
        "TK;TV;TE;>.HashIterator;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V
    .locals 0

    .line 1727
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$ValueIterator;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1730
    invoke-super {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextEntry()Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
