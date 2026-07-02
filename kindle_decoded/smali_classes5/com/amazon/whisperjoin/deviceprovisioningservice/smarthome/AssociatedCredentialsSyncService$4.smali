.class Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$4;
.super Ljava/lang/Object;
.source "AssociatedCredentialsSyncService.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->syncUsingV2API(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;)Lio/reactivex/CompletableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$4;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)Lio/reactivex/CompletableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Associated Credential Syncing V2 Successful."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$4;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;->mDSHSSetCredentialsAPI:Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;->getCredentialsJSON()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;->setCredentialsV2(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

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

    .line 250
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService$4;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncResult;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
