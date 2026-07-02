.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field removeFrom:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$inputs:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->val$inputs:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->emptyIterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->current:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->val$inputs:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->val$inputs:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->current:Ljava/util/Iterator;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->current:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->removeFrom:Ljava/util/Iterator;

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->removeFrom:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->removeFrom:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators$4;->removeFrom:Ljava/util/Iterator;

    return-void
.end method
