.class public Lcom/amazon/kindle/krx/KindleReaderSDKModule;
.super Ljava/lang/Object;
.source "KindleReaderSDKModule.kt"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# instance fields
.field private final lazyPluginInitializer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/plugin/IPluginInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final lazySdk:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyThreadCount:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyThreadPoolManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/foundation/internal/IThreadPoolManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lazySdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;->INSTANCE:Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;

    sget-object v1, Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;->INSTANCE:Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;

    sget-object v2, Lcom/amazon/kindle/krx/KindleReaderSDKModule$3;->INSTANCE:Lcom/amazon/kindle/krx/KindleReaderSDKModule$3;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/krx/KindleReaderSDKModule;-><init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;",
            "Ldagger/Lazy<",
            "Ljava/lang/Integer;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/plugin/IPluginInitializer;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/foundation/internal/IThreadPoolManager;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lazySdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyThreadCount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyPluginInitializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyThreadPoolManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->lazySdk:Ldagger/Lazy;

    iput-object p2, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->lazyThreadCount:Ldagger/Lazy;

    iput-object p3, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->lazyPluginInitializer:Ldagger/Lazy;

    iput-object p4, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->lazyThreadPoolManager:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public getDependentModules()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDependentModules()Ljava/util/Collection;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->getDependentModules()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "KindleReaderSDK"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5

    .line 42
    iget-object p1, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->lazySdk:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/KindleReaderSDK;

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->lazyPluginInitializer:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    .line 44
    iget-object v1, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->lazyThreadPoolManager:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/foundation/internal/IThreadPoolManager;

    .line 46
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDKModuleKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Initializing plugins"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/amazon/kindle/krx/KindleReaderSDK;->setInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 48
    invoke-interface {v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;->lazyThreadCount:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "lazyThreadCount.get()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withThreadNum(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    const-string v3, "plugin"

    .line 50
    invoke-interface {v2, v3}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 51
    invoke-interface {v2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 52
    sget-object v3, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0, p1, v3, v4, v2}, Lcom/amazon/kindle/krx/plugin/IPluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;ILjava/util/concurrent/ExecutorService;)V

    .line 53
    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
