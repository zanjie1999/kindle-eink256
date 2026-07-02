.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerWorkflowComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

.field private workflowModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$1;)V
    .locals 0

    .line 356
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->workflowModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/WorkflowComponent;
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->workflowModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    const-string v1, " must be set"

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$1;)V

    return-object v0

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 369
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public provisioningComponent(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;
    .locals 0

    .line 380
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    return-object p0
.end method

.method public workflowModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;
    .locals 0

    .line 375
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerWorkflowComponent$Builder;->workflowModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    return-object p0
.end method
