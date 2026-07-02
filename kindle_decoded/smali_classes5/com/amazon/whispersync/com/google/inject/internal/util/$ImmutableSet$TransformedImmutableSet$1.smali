.class Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet$1;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 482
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 484
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet$1;->index:I

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;

    iget-object v2, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet$1;->index:I

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
