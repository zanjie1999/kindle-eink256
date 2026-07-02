.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;
.super Ljava/lang/Object;
.source "ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final debugModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ffsArcusSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final fireOSUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/util/FireOSUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/util/FireOSUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    .line 31
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->fireOSUtilProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->clockProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->debugModeProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->ffsArcusSettingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/util/FireOSUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->fireOSUtilProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/util/FireOSUtil;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->clockProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->debugModeProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->ffsArcusSettingsProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->providesZeroTouchWorkflowFailureUpdateHandler(Lcom/amazon/whisperjoin/util/FireOSUtil;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Ljava/lang/Boolean;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    move-result-object v0

    return-object v0
.end method
