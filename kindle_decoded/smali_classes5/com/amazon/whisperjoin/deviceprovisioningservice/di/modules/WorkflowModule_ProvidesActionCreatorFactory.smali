.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesActionCreatorFactory;
.super Ljava/lang/Object;
.source "WorkflowModule_ProvidesActionCreatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesActionCreatorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesActionCreatorFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesActionCreatorFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesActionCreatorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    .line 19
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;->providesActionCreator()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesActionCreatorFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceActionCreator;

    move-result-object v0

    return-object v0
.end method
