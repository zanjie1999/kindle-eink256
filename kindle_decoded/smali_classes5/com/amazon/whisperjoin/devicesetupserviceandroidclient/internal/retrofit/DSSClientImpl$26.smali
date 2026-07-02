.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getWifiNetworks(Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;)Lio/reactivex/Single;
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
        "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

.field final synthetic val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field final synthetic val$request:Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->val$request:Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;

    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Lio/reactivex/SingleSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Lretrofit2/Response<",
            "Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksOutput;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    const-string v2, "/v1/GetWiFiNetworks"

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->val$request:Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;

    invoke-interface {v1, p1, v0, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->getWifiNetworks(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_0

    .line 950
    :cond_0
    iget-object v0, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->val$request:Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;

    invoke-interface {v0, p1, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->getWifiNetworks(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/GetWiFiNetworksInput;)Lretrofit2/Call;

    move-result-object p1

    .line 952
    :goto_0
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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

    .line 943
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$26;->apply(Ljava/lang/String;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
