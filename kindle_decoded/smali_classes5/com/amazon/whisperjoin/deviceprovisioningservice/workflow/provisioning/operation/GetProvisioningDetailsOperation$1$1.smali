.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$1$1;
.super Ljava/lang/Object;
.source "GetProvisioningDetailsOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$1;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$GetProvisioningDetails;)Lio/reactivex/ObservableSource;
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
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

.field final synthetic val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$1;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)V
    .locals 0

    .line 99
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$1$1;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$1$1;->val$provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$1$1;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$1$1;->val$provisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-static {v0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$GetProvisioningDetails;

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

    .line 99
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$1$1;->apply(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    move-result-object p1

    return-object p1
.end method
