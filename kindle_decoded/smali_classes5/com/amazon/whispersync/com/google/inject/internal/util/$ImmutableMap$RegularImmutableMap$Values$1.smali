.class Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values$1;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 720
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 722
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values$1;->index:I

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;->map:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->access$500(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;->map:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->access$500(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values$1;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
