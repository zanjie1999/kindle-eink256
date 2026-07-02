.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$5;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->discoveredLocalNotificationProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeRequest;)Lio/reactivex/Single;
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
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$5;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;",
            ">;)",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 400
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string/jumbo v1, "x-amzn-endpoint"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$5;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;

    .line 407
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->getDiscoveryOutputParameters()Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->getDiscoveryOutputParameters()Lcom/amazon/devicesetupservice/DiscoveryOutputParameters;

    move-result-object v0

    check-cast v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationOutputParameters;

    .line 410
    invoke-virtual {v0}, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationOutputParameters;->getProvisioneeInformation()Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;

    move-result-object v0

    .line 411
    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;-><init>()V

    .line 412
    invoke-virtual {v0}, Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->setDeviceType(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    move-result-object v1

    .line 413
    invoke-virtual {v0}, Lcom/amazon/devicesetupservice/v1/LegacyIdentifier;->getDsn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->setDsn(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    new-instance v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/DiscoveredProvisioneeOutput;->isCanProceed()Z

    move-result p1

    invoke-direct {v1, p1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;-><init>(ZLcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 397
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$5;->apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;

    move-result-object p1

    return-object p1
.end method
