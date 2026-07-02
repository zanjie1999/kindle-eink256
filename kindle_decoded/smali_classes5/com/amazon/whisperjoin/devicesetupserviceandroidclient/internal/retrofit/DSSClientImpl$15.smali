.class Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$15;
.super Ljava/lang/Object;
.source "DSSClientImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;->getPolicyForNewDevices(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyRequest;)Lio/reactivex/Single;
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
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
        ">;",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$15;->this$0:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;",
            ">;)",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 716
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 713
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSClientImpl$15;->apply(Lretrofit2/Response;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FFSWhiteListPolicyResponse;

    move-result-object p1

    return-object p1
.end method
