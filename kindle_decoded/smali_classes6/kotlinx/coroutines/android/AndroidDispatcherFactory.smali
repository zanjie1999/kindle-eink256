.class public final Lkotlinx/coroutines/android/AndroidDispatcherFactory;
.super Ljava/lang/Object;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/internal/MainDispatcherFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDispatcher(Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/android/AndroidDispatcherFactory;->createDispatcher(Ljava/util/List;)Lkotlinx/coroutines/android/HandlerContext;

    move-result-object p1

    return-object p1
.end method

.method public createDispatcher(Ljava/util/List;)Lkotlinx/coroutines/android/HandlerContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            ">;)",
            "Lkotlinx/coroutines/android/HandlerContext;"
        }
    .end annotation

    .line 55
    new-instance p1, Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->asHandler(Landroid/os/Looper;Z)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public getLoadPriority()I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    return v0
.end method

.method public hintOnError()Ljava/lang/String;
    .locals 1

    const-string v0, "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used"

    return-object v0
.end method
