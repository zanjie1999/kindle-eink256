.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$7;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->discoveredSmartHomeProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeRequest;)Lio/reactivex/Single;
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
        "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;",
        ">;",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$7;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;",
            ">;)",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 480
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string/jumbo v1, "x-amzn-endpoint"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$7;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;

    .line 484
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->getWaitTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v0

    .line 485
    new-instance v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->getProvisionerReportUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->isCanProceed()Z

    move-result p1

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;-><init>(Ljava/lang/String;ZJ)V

    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 477
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$7;->apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;

    move-result-object p1

    return-object p1
.end method
