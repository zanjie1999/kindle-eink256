.class public final enum Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/token/OAuthTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthTokenExchangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

.field public static final enum AuthorizationCodeToOAuthAccessTokenExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

.field public static final enum DMSTokenToOauthTokenExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

.field public static final enum OauthRefreshToAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

.field public static final enum OauthRefreshToCookieExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

.field public static final enum OauthRefreshToDelegationAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;


# instance fields
.field final mFailureMetric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 224
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    const/4 v1, 0x0

    const-string v2, "DMSTokenToOauthTokenExchange"

    const-string v3, "exchangeDMSCredentialsForOAuthTokenFailure"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->DMSTokenToOauthTokenExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    .line 225
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    const/4 v2, 0x1

    const-string v3, "OauthRefreshToAccessExchange"

    const-string/jumbo v4, "refreshNormalOAuthTokenFailure"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    .line 226
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    const/4 v3, 0x2

    const-string v4, "OauthRefreshToCookieExchange"

    const-string v5, "fetchCookiesFromServerFailure"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToCookieExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    .line 227
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    const/4 v4, 0x3

    const-string v5, "OauthRefreshToDelegationAccessExchange"

    const-string/jumbo v6, "refreshDelegatedOAuthTokenFailure"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToDelegationAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    .line 228
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    const/4 v5, 0x4

    const-string v6, "AuthorizationCodeToOAuthAccessTokenExchange"

    const-string v7, "authorizationCodeToAccessTokenFailure"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->AuthorizationCodeToOAuthAccessTokenExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    .line 222
    sget-object v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->DMSTokenToOauthTokenExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToCookieExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToDelegationAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->$VALUES:[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->mFailureMetric:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;
    .locals 1

    .line 222
    const-class v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;
    .locals 1

    .line 222
    sget-object v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->$VALUES:[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    return-object v0
.end method
