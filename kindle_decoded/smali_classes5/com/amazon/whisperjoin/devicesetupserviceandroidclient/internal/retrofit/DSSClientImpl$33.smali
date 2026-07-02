.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$33;
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
        "Lretrofit2/Response<",
        "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;",
        ">;",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V
    .locals 0

    .line 1090
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$33;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;",
            ">;)",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1094
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string/jumbo v1, "x-amzn-endpoint"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$33;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;

    .line 1098
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/smarthome/GetCustomerDevicesCredentialsOutput;->getCredentialsList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1090
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$33;->apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsResponse;

    move-result-object p1

    return-object p1
.end method
