.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final batchControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;",
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

.field private final legacyRelationshipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mobileWeblabHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 37
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->batchControllerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->legacyRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->mobileWeblabHandlerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p6, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;>;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;"
        }
    .end annotation

    .line 78
    new-instance v7, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;>;)",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/audible/relationship/controller/IAsinPairBatchController;

    .line 65
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    .line 66
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    .line 67
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 68
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/audible/mobile/preferences/PreferenceStore;

    move-object v0, p0

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->proxyProvidesTodoEventHandler(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/controller/IAsinPairBatchController;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/mobile/preferences/PreferenceStore;)Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesTodoEventHandler(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/controller/IAsinPairBatchController;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/mobile/preferences/PreferenceStore;)Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;)",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;"
        }
    .end annotation

    .line 95
    invoke-virtual/range {p0 .. p5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesTodoEventHandler(Lcom/audible/relationship/controller/IAsinPairBatchController;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/mobile/preferences/PreferenceStore;)Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 94
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->batchControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->legacyRelationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->mobileWeblabHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesTodoEventHandlerFactory;->get()Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    move-result-object v0

    return-object v0
.end method
