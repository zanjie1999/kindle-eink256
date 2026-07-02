.class public final Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;
.super Ljava/lang/Object;
.source "AppExpanModule_ProvideLocalResourceSetEventManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/event/ResourceSetEventManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    .line 23
    iput-object p2, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;)",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;-><init>(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/event/ResourceSetEventManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/dagger/AppExpanModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;",
            ">;)",
            "Lcom/amazon/appexpan/client/event/ResourceSetEventManager;"
        }
    .end annotation

    .line 33
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    invoke-static {p0, p1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;->proxyProvideLocalResourceSetEventManager(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideLocalResourceSetEventManager(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)Lcom/amazon/appexpan/client/event/ResourceSetEventManager;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule;->provideLocalResourceSetEventManager(Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;)Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/event/ResourceSetEventManager;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;->module:Lcom/amazon/appexpan/client/dagger/AppExpanModule;

    iget-object v1, p0, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;->executorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;->provideInstance(Lcom/amazon/appexpan/client/dagger/AppExpanModule;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/dagger/AppExpanModule_ProvideLocalResourceSetEventManagerFactory;->get()Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    move-result-object v0

    return-object v0
.end method
