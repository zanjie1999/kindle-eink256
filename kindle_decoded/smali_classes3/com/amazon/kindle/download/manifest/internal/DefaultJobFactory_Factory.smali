.class public final Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;
.super Ljava/lang/Object;
.source "DefaultJobFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final krlForDownloadFacadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final webRequestExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;->krlForDownloadFacadeProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;->webRequestExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;)",
            "Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;)",
            "Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;->krlForDownloadFacadeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;->webRequestExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory_Factory;->get()Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;

    move-result-object v0

    return-object v0
.end method
