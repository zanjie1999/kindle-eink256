.class final Lcom/amazon/android/util/SynchronizedLazyWith;
.super Ljava/lang/Object;
.source "Lazy.kt"

# interfaces
.implements Lcom/amazon/android/util/LazyWith;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/android/util/LazyWith<",
        "TT;TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private volatile _value:Ljava/lang/Object;

.field private initializer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TA;+TT;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TA;+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->initializer:Lkotlin/jvm/functions/Function1;

    .line 28
    sget-object p1, Lcom/amazon/android/util/UninitializedValue;->INSTANCE:Lcom/amazon/android/util/UninitializedValue;

    iput-object p1, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->_value:Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 30
    :goto_0
    iput-object p2, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->lock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 26
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/util/SynchronizedLazyWith;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->_value:Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/amazon/android/util/UninitializedValue;->INSTANCE:Lcom/amazon/android/util/UninitializedValue;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->_value:Ljava/lang/Object;

    .line 41
    sget-object v2, Lcom/amazon/android/util/UninitializedValue;->INSTANCE:Lcom/amazon/android/util/UninitializedValue;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->initializer:Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->_value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->initializer:Lkotlin/jvm/functions/Function1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public isInitialized()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->_value:Ljava/lang/Object;

    sget-object v1, Lcom/amazon/android/util/UninitializedValue;->INSTANCE:Lcom/amazon/android/util/UninitializedValue;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/amazon/android/util/SynchronizedLazyWith;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/util/SynchronizedLazyWith;->_value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "LazyWith not initialized yet."

    :goto_0
    return-object v0
.end method
