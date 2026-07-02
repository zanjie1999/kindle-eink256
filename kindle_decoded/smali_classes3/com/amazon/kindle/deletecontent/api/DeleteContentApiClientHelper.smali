.class public final Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;
.super Ljava/lang/Object;
.source "DeleteContentApiClientHelper.kt"


# instance fields
.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private final webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/webservices/IWebRequestManager;)V
    .locals 1

    const-string v0, "deviceInformation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webRequestManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    iput-object p3, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    return-void
.end method

.method private final getMarketplace()Lcom/amazon/kcp/application/Marketplace;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    const-string v1, "Marketplace.getInstance(\u2026Key.PFM), Marketplace.US)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getBaseURL()Ljava/lang/String;
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->getMarketplace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getDeleteContentRequestURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    const-string v1, "webserviceURL"

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webserviceURL.fullURL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCookieString()Ljava/lang/String;
    .locals 10

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getIdentityCookies()[Ljava/lang/String;

    move-result-object v1

    const-string v0, "deviceInformation.identityCookies"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "; "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    return-object v0
.end method

.method public final getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    return-object v0
.end method
