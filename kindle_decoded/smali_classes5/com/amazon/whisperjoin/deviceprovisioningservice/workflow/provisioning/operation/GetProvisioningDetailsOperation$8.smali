.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$8;
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
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$NetworkScanComplete;",
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

    .line 235
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$8;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$NetworkScanComplete;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$NetworkScanComplete;",
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

    .line 238
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Received notification that network scan was complete, get the new list of visible networks"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$8;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

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

    .line 235
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$NetworkScanComplete;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$8;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$NetworkScanComplete;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
