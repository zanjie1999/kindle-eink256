.class public final Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "GetHouseholdMembersWebRequest.kt"


# instance fields
.field private final ACCEPT_HEADER_KEY:Ljava/lang/String;

.field private final ACCESS_TOKEN:Ljava/lang/String;

.field private final CONTENT_TYPE_HEADER_KEY:Ljava/lang/String;

.field private final JSON_HEADER_VALUE:Ljava/lang/String;

.field private final MAX_CONNECTION_TRIAL:I

.field private final PAYLOAD_STRING:Ljava/lang/String;

.field private final TIME_OUT_VALUE:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->CONTENT_TYPE_HEADER_KEY:Ljava/lang/String;

    const-string p1, "application/json"

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->JSON_HEADER_VALUE:Ljava/lang/String;

    const-string p1, "Accept"

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->ACCEPT_HEADER_KEY:Ljava/lang/String;

    const-string/jumbo p1, "x-amz-access-token"

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->ACCESS_TOKEN:Ljava/lang/String;

    const-string/jumbo p1, "{}"

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->PAYLOAD_STRING:Ljava/lang/String;

    const/16 p1, 0x7530

    .line 37
    iput p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->TIME_OUT_VALUE:I

    const/4 p1, 0x3

    .line 38
    iput p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->MAX_CONNECTION_TRIAL:I

    .line 41
    new-instance p1, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;

    invoke-direct {p1}, Lcom/amazon/kindle/library/household/request/HouseholdResponseHandler;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 42
    iget-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->CONTENT_TYPE_HEADER_KEY:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->JSON_HEADER_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 43
    iget-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->ACCEPT_HEADER_KEY:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->JSON_HEADER_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 44
    iget-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->ACCESS_TOKEN:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 45
    iget p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->TIME_OUT_VALUE:I

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 46
    iget p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->MAX_CONNECTION_TRIAL:I

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 47
    sget-object p1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 48
    iget-object p1, p0, Lcom/amazon/kindle/library/household/request/GetHouseholdMembersWebRequest;->PAYLOAD_STRING:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method
