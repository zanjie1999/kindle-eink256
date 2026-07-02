.class public final Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$IterableWithToString;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$1;-><init>()V

    .line 100
    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->transform(Ljava/lang/Iterable;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/lang/Iterable;

    move-result-object p0

    .line 102
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$2;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 66
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 39
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Ljava/lang/Iterable;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TF;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TF;+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables$3;-><init>(Ljava/lang/Iterable;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)V

    return-object v0
.end method
