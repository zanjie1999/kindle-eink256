.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1$2;
.super Ljava/lang/Object;
.source "ProvisionDeviceOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ProvisionDevice;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1;

.field final synthetic val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1$2;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1$2;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1$2;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1$2;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Observable;

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

    .line 74
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1$2;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
