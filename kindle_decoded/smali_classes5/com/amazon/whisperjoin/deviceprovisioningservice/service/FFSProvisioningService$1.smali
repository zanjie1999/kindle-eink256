.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;
.super Lio/reactivex/observers/DisposableSingleObserver;
.source "FFSProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableSingleObserver<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableSingleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 201
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was error getting the whitelist policy"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V
    .locals 3

    .line 194
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received WhiteListPolicy. Allowed to Scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->allowedToScan()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$102(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    .line 196
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$1;->onSuccess(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V

    return-void
.end method
