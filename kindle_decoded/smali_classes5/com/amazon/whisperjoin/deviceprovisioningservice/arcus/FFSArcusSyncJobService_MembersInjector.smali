.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService_MembersInjector;
.super Ljava/lang/Object;
.source "FFSArcusSyncJobService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFFSArcusSyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionerClientDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectMFFSArcusSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    return-void
.end method

.method public static injectMProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-void
.end method
