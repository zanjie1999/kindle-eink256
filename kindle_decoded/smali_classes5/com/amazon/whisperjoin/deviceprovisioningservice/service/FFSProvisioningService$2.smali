.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$2;
.super Ljava/lang/Object;
.source "FFSProvisioningService.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
        "Lio/reactivex/SingleSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;->getFFSArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->access$502(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    .line 187
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;->mWhiteListPolicyCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->getWhiteListPolicy()Lio/reactivex/Single;

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

    .line 183
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService$2;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncResult;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
