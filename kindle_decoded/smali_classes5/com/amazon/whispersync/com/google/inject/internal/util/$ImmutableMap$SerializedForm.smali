.class Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final keys:[Ljava/lang/Object;

.field final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "**>;)V"
        }
    .end annotation

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    .line 758
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    .line 760
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 761
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 762
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 4

    .line 767
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;-><init>()V

    const/4 v1, 0x0

    .line 768
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 769
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method
