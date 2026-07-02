.class public final Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field public static final KEY_ACCOUNT_POOL:Ljava/lang/String; = "com.amazon.dcp.sso.token.device.accountpool"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_COR:Ljava/lang/String; = "COR"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEVICE_EMAIL:Ljava/lang/String; = "com.amazon.dcp.sso.property.deviceemail"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEVICE_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.property.devicename"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "com.amazon.dcp.sso.token.devicedevicetype"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DIRECTED_ID_DELEGATEE:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.delegateeaccount"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DSN:Ljava/lang/String; = "com.amazon.dcp.sso.token.device.deviceserialname"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_EXTRA_TOKENS_KEY_PREFIX:Ljava/lang/String; = "com.amazon.dcp.sso.property.account.extratokens"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_FIRST_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.property.firstname"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_IS_ANONYMOUS:Ljava/lang/String; = "isAnonymous"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.property.username"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PFM:Ljava/lang/String; = "PFM"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_XFSN:Ljava/lang/String; = "com.amazon.identity.cookies.xfsn"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_XMAIN_AND_XACB_COOKIES:Ljava/lang/String; = "com.amazon.dcp.sso.token.cookie.xmainAndXabcCookies"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomizedKeyForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 234
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.dcp.sso.property.account.extratokens."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceEmailKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.property.deviceemail"

    .line 190
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceNameKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.property.devicename"

    .line 202
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceTypeKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.devicedevicetype"

    .line 161
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDsnKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.device.deviceserialname"

    .line 176
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserFirstNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.property.firstname"

    .line 220
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserNameKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "com.amazon.dcp.sso.property.username"

    .line 214
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
