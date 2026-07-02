.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->recordDevicePossessionIntentInnerBarcode(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;)Lio/reactivex/Completable;
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
        "Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeOutput;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

.field final synthetic val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field final synthetic val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;

    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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
            "Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeOutput;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 733
    new-instance v0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;

    invoke-direct {v0}, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;-><init>()V

    .line 734
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;->getBarcodeData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;->setBarcodeData(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mRegionSpecificUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 739
    iget-object v2, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    const-string v3, "/v1/recordDevicePossessionIntentInnerBarcode"

    invoke-static {v1, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->recordDevicePossessionIntentInnerBarcode(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;)Lretrofit2/Call;

    move-result-object p1

    goto :goto_0

    .line 741
    :cond_0
    iget-object v1, v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->mDssApi:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;

    invoke-interface {v1, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSRetrofitInterface;->recordDevicePossessionIntentInnerBarcode(Ljava/lang/String;Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInnerBarcodeInput;)Lretrofit2/Call;

    move-result-object p1

    .line 745
    :goto_0
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$CallDssOnSubscribe;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;->val$dssOperation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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

    .line 730
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$17;->apply(Ljava/lang/String;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
