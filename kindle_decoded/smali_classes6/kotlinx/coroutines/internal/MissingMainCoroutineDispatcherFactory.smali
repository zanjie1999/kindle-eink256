.class public final Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcherFactory;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"

# interfaces
.implements Lkotlinx/coroutines/internal/MainDispatcherFactory;


# annotations
.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcherFactory;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcherFactory;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDispatcher(Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            ">;)",
            "Lkotlinx/coroutines/MainCoroutineDispatcher;"
        }
    .end annotation

    .line 126
    new-instance p1, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v0, v1, v0}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public getLoadPriority()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public hintOnError()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {p0}, Lkotlinx/coroutines/internal/MainDispatcherFactory$DefaultImpls;->hintOnError(Lkotlinx/coroutines/internal/MainDispatcherFactory;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
