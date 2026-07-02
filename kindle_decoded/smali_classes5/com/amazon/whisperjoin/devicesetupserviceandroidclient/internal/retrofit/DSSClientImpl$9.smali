.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$9;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->startEcdheAuthenticationSession(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;)Lio/reactivex/Single;
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
        "Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionOutput;",
        ">;",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$9;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionOutput;",
            ">;)",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 564
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionOutput;

    .line 566
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionOutput;->getContinuationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionOutput;->getEcdhePublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionOutput;->getEcdsaSignature()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 561
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$9;->apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;

    move-result-object p1

    return-object p1
.end method
