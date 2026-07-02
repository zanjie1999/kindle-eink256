.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getCustomerDevicesCredentials(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/String;",
        "Lio/reactivex/SingleSource<",
        "Lretrofit2/Response<",
        "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

.field final synthetic val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field final synthetic val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V
    .locals 0

    .line 1074
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Lio/reactivex/SingleSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Lretrofit2/Response<",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1077
    new-instance v0, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;-><init>()V

    .line 1078
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    .line 1079
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;->getCredentialRequests()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;->setCredentialRequests(Ljava/util/List;)V

    .line 1082
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1083
    iget-object v2, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    const-string v3, "/v1/getCustomerDevicesCredentials"

    invoke-static {v1, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->getCustomerDevicesCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_0

    .line 1085
    :cond_0
    iget-object v1, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    invoke-interface {v1, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->getCustomerDevicesCredentials(Ljava/lang/String;Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsInput;)Lretrofit2/Call;

    move-result-object p1

    .line 1087
    :goto_0
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lretrofit2/Call;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

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

    .line 1074
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$34;->apply(Ljava/lang/String;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
