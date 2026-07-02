.class Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$2;
.super Ljava/lang/Object;
.source "AssociatedCredentialsSyncService.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->syncAssociatedCredentials(Landroid/app/job/JobParameters;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)Lio/reactivex/CompletableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->getFFSArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getZigbeeArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->isSyncServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Associated Credential Syncing is not enabled. No SmartHome Simple Setup will be available on device"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mZigbeeCredentialsSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mProvisionerClientData:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SyncCoordinator;->initializeWithProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 203
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mZigbeeCredentialsSyncCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;->initializeWithZigbeeSettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;)V

    .line 205
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->useV2Api()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$2;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
