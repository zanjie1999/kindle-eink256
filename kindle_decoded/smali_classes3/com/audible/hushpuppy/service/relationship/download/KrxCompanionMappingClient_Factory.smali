.class public final Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;
.super Ljava/lang/Object;
.source "KrxCompanionMappingClient_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final endpointFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppySettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->endpointFactoryProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->hushpuppySettingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;",
            ">;)",
            "Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;",
            ">;)",
            "Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    .line 46
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/greenrobot/event/EventBus;

    .line 48
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/pfm/endpoint/IEndpointFactory;

    .line 49
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/pfm/endpoint/IEndpointFactory;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->endpointFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->hushpuppySettingsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient_Factory;->get()Lcom/audible/hushpuppy/service/relationship/download/KrxCompanionMappingClient;

    move-result-object v0

    return-object v0
.end method
