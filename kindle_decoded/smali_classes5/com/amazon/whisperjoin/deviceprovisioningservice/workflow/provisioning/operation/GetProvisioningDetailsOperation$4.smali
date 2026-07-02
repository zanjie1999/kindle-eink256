.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$4;
.super Ljava/lang/Object;
.source "GetProvisioningDetailsOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;->validateWiFiSyncAuthToken(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenResponse;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenResponse;)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenResponse;->isValidToken()Z

    move-result p1

    if-nez p1, :cond_0

    .line 185
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Wi-Fi Sync Auth Token failed validation"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;-><init>()V

    invoke-static {p1}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 189
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Wi-Fi Sync Auth Token passed validation"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
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

    .line 181
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$4;->apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ValidateWiFiSyncAuthTokenResponse;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
