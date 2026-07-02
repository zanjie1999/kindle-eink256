.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService_MembersInjector;
.super Ljava/lang/Object;
.source "AssociatedCredentialsSyncService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAssociatedDeviceCredentialsSyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private final mCredentialSyncMetricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDSHSSetCredentialsAPIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mZigbeeCredentialsSyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectMAssociatedDeviceCredentialsSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mAssociatedDeviceCredentialsSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;

    return-void
.end method

.method public static injectMCredentialSyncMetricsRecorder(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mCredentialSyncMetricsRecorder:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    return-void
.end method

.method public static injectMDSHSSetCredentialsAPI(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mDSHSSetCredentialsAPI:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;

    return-void
.end method

.method public static injectMFFSArcusSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mFFSArcusSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    return-void
.end method

.method public static injectMProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-void
.end method

.method public static injectMZigbeeCredentialsSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mZigbeeCredentialsSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    return-void
.end method
