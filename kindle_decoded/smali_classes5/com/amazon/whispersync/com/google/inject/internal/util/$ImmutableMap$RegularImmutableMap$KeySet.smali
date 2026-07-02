.class Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$KeySet;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;TK;>;"
    }
.end annotation


# instance fields
.field final map:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 683
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->access$500(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->access$600(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;-><init>([Ljava/lang/Object;I)V

    .line 684
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$KeySet;->map:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$KeySet;->map:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 678
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$KeySet;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TK;"
        }
    .end annotation

    .line 688
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
