.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/relationship/db/IRelationshipRequestStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final sqLiteOpenHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 20
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;->sqLiteOpenHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/relationship/db/IRelationshipRequestStorage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;",
            ">;)",
            "Lcom/audible/relationship/db/IRelationshipRequestStorage;"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;

    invoke-static {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;->proxyProvidesRelationshipRequestStorage(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;)Lcom/audible/relationship/db/IRelationshipRequestStorage;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesRelationshipRequestStorage(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;)Lcom/audible/relationship/db/IRelationshipRequestStorage;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesRelationshipRequestStorage(Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;)Lcom/audible/relationship/db/IRelationshipRequestStorage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/relationship/db/IRelationshipRequestStorage;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/relationship/db/IRelationshipRequestStorage;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;->sqLiteOpenHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/relationship/db/IRelationshipRequestStorage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipRequestStorageFactory;->get()Lcom/audible/relationship/db/IRelationshipRequestStorage;

    move-result-object v0

    return-object v0
.end method
