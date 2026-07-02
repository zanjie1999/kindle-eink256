.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;
.super Ljava/lang/Object;
.source "FFSProvisioningService.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener$WhiteListPolicyUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V
    .locals 3

    .line 334
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    monitor-enter p2

    .line 335
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhiteListPolicy Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$102(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    .line 337
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$8;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatus;)V

    .line 338
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
