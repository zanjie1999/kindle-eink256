.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->discoveredProvisionableDevice(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;)Lio/reactivex/Single;
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
        "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

.field final synthetic val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field final synthetic val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceOutput;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;-><init>()V

    .line 242
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getProvisionerApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setProvisionerApplication(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getProvisionerApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setProvisionerApplicationVersion(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getProductIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setProductIndex(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setDeviceName(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getAuthMaterialIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setAuthMaterialIndex(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getSoftwareVersionIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setSoftwareVersionIndex(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setNonce(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setRssi(I)V

    .line 250
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getRadio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setRadio(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getProvisioningMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setProvisioningMethod(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getTrustMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setTrustMethod(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setProvisionerInfo(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V

    .line 254
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;->getAdvertisedSdkVersionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;->setAdvertisedSdkVersionIndex(I)V

    .line 258
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    const-string v3, "/v1/discoveredProvisionableDevice"

    invoke-static {v1, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->discoveredProvisionableDevice(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    invoke-interface {v1, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->discoveredProvisionableDevice(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/DiscoveredProvisionableDeviceInput;)Lretrofit2/Call;

    move-result-object p1

    .line 265
    :goto_0
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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

    .line 238
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$2;->apply(Ljava/lang/String;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
