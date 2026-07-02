.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingDeviceEvents$4;
.super Ljava/lang/Object;
.source "ProvisioningVerificationUsingDeviceEvents.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingDeviceEvents;->verifyRegistration(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$RegistrationStateChange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingDeviceEvents;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$RegistrationStateChange;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;->COMPLETING_REGISTRATION:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->data:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails;->getRegistrationState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationDetails$State;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$RegistrationStateChange;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingDeviceEvents$4;->test(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$RegistrationStateChange;)Z

    move-result p1

    return p1
.end method
