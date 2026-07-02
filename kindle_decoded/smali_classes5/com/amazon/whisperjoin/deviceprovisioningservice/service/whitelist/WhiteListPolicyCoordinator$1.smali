.class Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;
.super Ljava/lang/Object;
.source "WhiteListPolicyCoordinator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->getWhiteListPolicy()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;->writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;Landroid/content/SharedPreferences;)V

    .line 97
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;->writeToSharedPreferences(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;Landroid/content/SharedPreferences;)V

    .line 99
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;)V

    .line 100
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;->getHoursToNextCall()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 101
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    invoke-static {p1, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;J)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator$1;->apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicy;

    move-result-object p1

    return-object p1
.end method
