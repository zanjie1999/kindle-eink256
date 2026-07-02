.class public final Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;
.super Ljava/lang/Object;
.source "ThirdPartyCoreModule_GetLibraryServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/content/ILibraryService;",
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

.field private final scanLocalContentUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->factoryProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->scanLocalContentUtilsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;)",
            "Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/IKindleObjectFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
            ">;)",
            "Lcom/amazon/kindle/content/ILibraryService;"
        }
    .end annotation

    .line 38
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    .line 37
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->proxyGetLibraryService(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetLibraryService(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 52
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/application/ThirdPartyCoreModule;->getLibraryService(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 51
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/content/ILibraryService;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->factoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->scanLocalContentUtilsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetLibraryServiceFactory;->get()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    return-object v0
.end method
