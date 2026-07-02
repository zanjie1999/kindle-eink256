.class final Lcom/google/common/collect/RegularImmutableBiMap$Inverse;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-void
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse$InverseEntrySet;-><init>(Lcom/google/common/collect/RegularImmutableBiMap$Inverse;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->access$200(Lcom/google/common/collect/RegularImmutableBiMap;)I

    move-result v2

    and-int/2addr v1, v2

    .line 196
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 198
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 257
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
