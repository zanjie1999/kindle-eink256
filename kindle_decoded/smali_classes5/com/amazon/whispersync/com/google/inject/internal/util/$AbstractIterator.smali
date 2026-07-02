.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->NOT_READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    .line 129
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->FAILED:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    .line 130
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->next:Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->DONE:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->DONE:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->FAILED:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(Z)V

    .line 118
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$1;->$SwitchMap$com$google$inject$internal$util$AbstractIterator$State:[I

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->tryToComputeNext()Z

    move-result v0

    return v0

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;->NOT_READY:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->state:Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator$State;

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
