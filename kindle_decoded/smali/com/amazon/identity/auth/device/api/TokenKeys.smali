.class public final Lcom/amazon/identity/auth/device/api/TokenKeys;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/TokenKeys$Options;
    }
.end annotation


# static fields
.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.access_token"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACTOR_ACCESS_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ATZ_ACCESS_TOKEN:Ljava/lang/String; = "com.amazon.dcp.sso.token.oauth.atz.access_token"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_LWA_APPLICATION_ID:Ljava/lang/String; = "application-id"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_LWA_CLIENT_ID:Ljava/lang/String; = "client-id"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_LWA_REQUESTED_SCOPES:Ljava/lang/String; = "lwa-scopes"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_XFSN:Ljava/lang/String; = "com.amazon.identity.cookies.xfsn"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOBILE_AUTH_ENCRYPTION_KEY_TOKEN:Ljava/lang/String; = "com.amazon.mobile.auth.encryption_key"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    .line 198
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActorAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    .line 212
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdpTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.device.adptoken"

    .line 169
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAtzTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.oauth.atz.access_token"

    .line 226
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMobileAuthEncryptionKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.mobile.auth.encryption_key"

    .line 239
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateKeyKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.device.privatekey"

    .line 184
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
