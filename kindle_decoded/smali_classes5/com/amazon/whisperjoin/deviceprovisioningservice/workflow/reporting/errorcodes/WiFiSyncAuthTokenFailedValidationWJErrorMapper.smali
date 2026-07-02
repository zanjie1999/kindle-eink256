.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WiFiSyncAuthTokenFailedValidationWJErrorMapper;
.super Ljava/lang/Object;
.source "WiFiSyncAuthTokenFailedValidationWJErrorMapper.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 14
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Provisioning;->wifiSyncAuthTokenFailedValidation()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WiFiSyncAuthTokenFailedValidationWJErrorMapper;->map(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method
