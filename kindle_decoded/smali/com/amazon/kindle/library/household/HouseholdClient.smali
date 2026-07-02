.class public final Lcom/amazon/kindle/library/household/HouseholdClient;
.super Ljava/lang/Object;
.source "HouseholdClient.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/library/household/HouseholdClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/kindle/library/household/HouseholdClient;

    invoke-direct {v0}, Lcom/amazon/kindle/library/household/HouseholdClient;-><init>()V

    sput-object v0, Lcom/amazon/kindle/library/household/HouseholdClient;->INSTANCE:Lcom/amazon/kindle/library/household/HouseholdClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getHouseholdEndpoint()Ljava/lang/String;
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    if-ne v0, v1, :cond_1

    const-string v0, "https://hh2.amazon.com/v1/getHousehold"

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "https://hh2.amazon.co.uk/v1/getHousehold"

    :goto_1
    return-object v0
.end method

.method public static final getHouseholdMembers()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCESS_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 32
    sget-object v2, Lcom/amazon/kindle/library/household/HouseholdClient;->INSTANCE:Lcom/amazon/kindle/library/household/HouseholdClient;

    invoke-direct {v2}, Lcom/amazon/kindle/library/household/HouseholdClient;->getHouseholdEndpoint()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    new-instance v3, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;

    const-string v4, "accessToken"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, v0}, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 37
    invoke-virtual {v3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kindle.library.household.request.HouseholdResponseHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
