.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractMapEntry;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1742
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractMapEntry;-><init>()V

    .line 1743
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 1744
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1752
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1768
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 1765
    throw p1
.end method
