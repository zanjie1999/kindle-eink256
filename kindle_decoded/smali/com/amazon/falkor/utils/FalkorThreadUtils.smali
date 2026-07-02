.class public final Lcom/amazon/falkor/utils/FalkorThreadUtils;
.super Ljava/lang/Object;
.source "FalkorThreadUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/falkor/utils/FalkorThreadUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/FalkorThreadUtils;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrSubmitOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;)V
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.threadPoolManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final scheduleOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;J)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
