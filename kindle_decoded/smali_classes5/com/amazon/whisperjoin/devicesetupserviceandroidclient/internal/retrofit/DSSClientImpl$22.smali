.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$22;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getCustomerProvisioneesSetupStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lretrofit2/Response<",
        "Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusOutput;",
        ">;",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$22;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusOutput;",
            ">;)",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;"
        }
    .end annotation

    .line 876
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusOutput;

    .line 877
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;-><init>()V

    .line 879
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusOutput;->getSearchIntervalUsed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;->setSearchIntervalUsed(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;

    move-result-object v0

    .line 880
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/GetCustomerProvisioneesSetupStatusOutput;->getProvisioneeSetupInformationList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;

    .line 881
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$22;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-static {v2, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$700(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/devicesetupservice/v1/ProvisioneeSetupInformation;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;->addProvisioneeSetupStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;->createResponse()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;

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

    .line 872
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$22;->apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;

    move-result-object p1

    return-object p1
.end method
