.class public final Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;
.super Ljava/lang/Object;
.source "AppExpanModule_ProvideAsyncTaskExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    return-void
.end method

.method public static create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;-><init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;->proxyProvideAsyncTaskExecutor(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAsyncTaskExecutor(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule;->provideAsyncTaskExecutor()Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    invoke-static {v0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;->provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;)Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideAsyncTaskExecutorFactory;->get()Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    move-result-object v0

    return-object v0
.end method
