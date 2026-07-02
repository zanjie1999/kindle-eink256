.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final ownershipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 28
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->serviceProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->ownershipManagerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lde/greenrobot/event/EventBus;

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->proxyProvideLegacyDownloadManager(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideLegacyDownloadManager(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideLegacyDownloadManager(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 61
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->serviceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->ownershipManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideLegacyDownloadManagerFactory;->get()Lcom/audible/hushpuppy/controller/audible/download/manager/ILegacyDownloadManager;

    move-result-object v0

    return-object v0
.end method
