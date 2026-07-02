.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;
.super Ljava/lang/Object;
.source "FailableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;-><init>()V

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->makeComputingMap(Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;->delegate:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    if-nez v0, :cond_0

    return-object p1

    .line 52
    :cond_0
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 53
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
