.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$LimitOfSuccessResultsReached;
.super Ljava/lang/Object;
.source "StartDiscoveryOperation.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitOfSuccessResultsReached"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mSuccessCount:I

.field private final mSuccessLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$LimitOfSuccessResultsReached;->mSuccessLimit:I

    const/4 p1, 0x0

    .line 264
    iput p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$LimitOfSuccessResultsReached;->mSuccessCount:I

    return-void
.end method


# virtual methods
.method public test(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->isState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 273
    :cond_0
    iget p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$LimitOfSuccessResultsReached;->mSuccessCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$LimitOfSuccessResultsReached;->mSuccessCount:I

    .line 274
    iget v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$LimitOfSuccessResultsReached;->mSuccessLimit:I

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$LimitOfSuccessResultsReached;->test(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)Z

    move-result p1

    return p1
.end method
