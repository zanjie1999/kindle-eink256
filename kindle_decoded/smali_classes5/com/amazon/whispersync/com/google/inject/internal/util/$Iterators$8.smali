.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$8;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$8;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$8;->done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 296
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$8;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$8;->done:Z

    .line 300
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$8;->val$value:Ljava/lang/Object;

    return-object v0

    .line 297
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
