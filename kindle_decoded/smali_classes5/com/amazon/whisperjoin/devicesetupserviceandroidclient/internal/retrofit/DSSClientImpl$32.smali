.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->createAPForWifiProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;)Lio/reactivex/Single;
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
        "Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

.field final synthetic val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field final synthetic val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;

    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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
            "Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1021
    new-instance v0, Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;-><init>()V

    .line 1022
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->getDiscoveredWifiProvisionee()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->getEncodedSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;->setEncodedSsid(Ljava/lang/String;)V

    .line 1023
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->getDiscoveredWifiProvisionee()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;->setMacAddress(Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->getDiscoveredWifiProvisionee()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredWifiProvisionee;->getRssi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;->setRssi(I)V

    .line 1026
    new-instance v1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;

    invoke-direct {v1}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;-><init>()V

    .line 1027
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->getActiveConnectionsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->setActiveConnectionsCount(I)V

    .line 1028
    invoke-virtual {v1, v0}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->setDiscoveredDevice(Lcom/amazon/devicesetupservice/wss1p/DiscoveredDevice;)V

    .line 1029
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    .line 1032
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1033
    iget-object v2, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    const-string v3, "/v1/createAPForWifiProvisionee"

    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p1, v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->createAPForWifiProvisionee(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v0, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    invoke-interface {v0, p1, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->createAPForWifiProvisionee(Ljava/lang/String;Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeInput;)Lretrofit2/Call;

    move-result-object p1

    .line 1037
    :goto_0
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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

    .line 1018
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$32;->apply(Ljava/lang/String;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
