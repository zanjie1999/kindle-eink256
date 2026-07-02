.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideHushpuppyStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final syncFileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
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
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 28
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->syncFileManagerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->configurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/ISyncFileManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)",
            "Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    .line 50
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/relationship/controller/ISyncFileManager;

    .line 51
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/audible/relationship/db/IConfiguration;

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->proxyProvideHushpuppyStorage(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideHushpuppyStorage(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideHushpuppyStorage(Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/relationship/controller/ISyncFileManager;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 71
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->syncFileManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->configurationProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideHushpuppyStorageFactory;->get()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object v0

    return-object v0
.end method
