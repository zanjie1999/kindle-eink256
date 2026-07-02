.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationUsingRegistrationService;
.super Ljava/lang/Object;
.source "ProvisioningVerificationUsingRegistrationService.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/provisioningverification/ProvisioningVerificationMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;
    .locals 0

    .line 12
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->disconnect()V

    .line 13
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
