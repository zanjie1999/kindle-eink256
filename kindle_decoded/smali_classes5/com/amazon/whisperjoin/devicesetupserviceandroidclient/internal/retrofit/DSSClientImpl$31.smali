.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$31;
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
        "Lretrofit2/Response<",
        "Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;",
        ">;",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$31;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;",
            ">;)",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1043
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;

    .line 1045
    new-instance v8, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;

    .line 1046
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->isCanProceed()Z

    move-result v1

    .line 1047
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 1048
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 1050
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->getTimeout()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/util/Iso8601TimeConverter;->convertDurationToMs(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    .line 1051
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->getHostPortList()Ljava/util/List;

    move-result-object v6

    .line 1052
    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/wss1p/CreateAPForWifiProvisioneeOutput;->getBlacklistTimeout()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    return-object v8
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1040
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$31;->apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/CreateAPForWifiProvisioneeResponse;

    move-result-object p1

    return-object p1
.end method
