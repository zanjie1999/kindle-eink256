.class Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$EntrySet;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 657
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->access$500(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 658
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$EntrySet;->map:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 662
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 663
    check-cast p1, Ljava/util/Map$Entry;

    .line 664
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$EntrySet;->map:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
