.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/relationship/controller/IAsinPairBatchStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/relationship/controller/IAsinPairBatchStorage;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;->proxyProvidesAsinPairBatchStorage(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesAsinPairBatchStorage(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/relationship/controller/IAsinPairBatchStorage;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesAsinPairBatchStorage()Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 32
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/relationship/controller/IAsinPairBatchStorage;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    invoke-static {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;)Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchStorageFactory;->get()Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    move-result-object v0

    return-object v0
.end method
