.class Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;
.super Ljava/lang/Object;
.source "ProvisionableEventManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->onProvisionableEventNotification(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEventNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;

.field final synthetic val$retrievalHandle:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;->val$retrievalHandle:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->access$000(Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;->val$retrievalHandle:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;->getCommand()Lcom/amazon/whisperbridge/constants/Command;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;->val$retrievalHandle:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;

    .line 210
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$EventCommandInfo;->getCommandReturnTypeToken()Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    const/4 v3, 0x0

    .line 209
    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;->executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    instance-of v1, v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    if-eqz v1, :cond_0

    .line 218
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Retrieved WifiConnectionDetails"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/WifiConnectionUpdatedEvent;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/WifiConnectionUpdatedEvent;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)V

    goto :goto_0

    .line 220
    :cond_0
    instance-of v1, v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    if-eqz v1, :cond_1

    .line 221
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Retrieved CBLRegistrationDetails"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/CBLRegistrationUpdatedEvent;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;)V

    goto :goto_0

    .line 223
    :cond_1
    instance-of v1, v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    if-eqz v1, :cond_2

    .line 224
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Retrieved ProvisioningFailureCause"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisioningDoneFailureEvent;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;

    invoke-direct {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisioningDoneFailureEvent;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisioningFailure;)V

    goto :goto_0

    .line 228
    :cond_2
    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;)V

    return-object v3

    :catch_0
    move-exception v0

    .line 230
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown return object"

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 212
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Execute operation failed"

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    throw v0
.end method
