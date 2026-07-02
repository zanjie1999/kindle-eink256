.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$7;
.super Ljava/lang/Object;
.source "GetProvisioningDetailsOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;->forceWifiRescanAndGetResults(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V
    .locals 0

    .line 242
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$7;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 246
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Something went wrong, just get visible networks again"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$7;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getVisibleNetworks()Lio/reactivex/Single;

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

    .line 242
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$7;->apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
