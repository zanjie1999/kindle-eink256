.class public final Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;
.super Ljava/lang/Object;
.source "ThirdPartyCoreModule_GetGroupServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/content/IGroupService;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
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
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;->factoryProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/content/IGroupService;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/kindle/content/IGroupService;"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;->proxyGetGroupService(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;)Lcom/amazon/kindle/content/IGroupService;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetGroupService(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;)Lcom/amazon/kindle/content/IGroupService;
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/amazon/kcp/application/ThirdPartyCoreModule;->getGroupService(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;)Lcom/amazon/kindle/content/IGroupService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kindle/content/IGroupService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/content/IGroupService;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;->factoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetGroupServiceFactory;->get()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    return-object v0
.end method
