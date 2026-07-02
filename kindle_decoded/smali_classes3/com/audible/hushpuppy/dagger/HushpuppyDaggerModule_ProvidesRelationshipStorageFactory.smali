.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesRelationshipStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/relationship/db/IRelationshipStorage;",
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

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final sqliteHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 24
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->sqliteHelperProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->configurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/db/IRelationshipStorage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)",
            "Lcom/audible/relationship/db/IRelationshipStorage;"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/relationship/db/IConfiguration;

    .line 37
    invoke-static {p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->proxyProvidesRelationshipStorage(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/relationship/db/IRelationshipStorage;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesRelationshipStorage(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/relationship/db/IRelationshipStorage;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesRelationshipStorage(Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/relationship/db/IRelationshipStorage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 53
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/relationship/db/IRelationshipStorage;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/relationship/db/IRelationshipStorage;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->sqliteHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->configurationProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/db/IRelationshipStorage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipStorageFactory;->get()Lcom/audible/relationship/db/IRelationshipStorage;

    move-result-object v0

    return-object v0
.end method
