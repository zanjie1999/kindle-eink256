.class public final enum Lcom/amazon/identity/auth/device/api/RegistrationType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/RegistrationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/RegistrationType;

.field public static final enum ANONYMOUS:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum FROM_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum FROM_ADP_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum FROM_ATMAIN:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum FROM_AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum FROM_AUTH_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum REGISTER_DELEGATED_ACCOUNT:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WITH_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WITH_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WITH_EXPLICIT_URL:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WITH_LINK_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WITH_LOGIN_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WITH_PRIMARY_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WITH_SSO_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v1, 0x0

    const-string v2, "WITH_LOGIN_CREDENTIALS"

    const-string v3, "LoginCredentials"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LOGIN_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v2, 0x1

    const-string v3, "WITH_DEVICE_SECRET"

    const-string v4, "DeviceSecret"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v3, 0x2

    const-string v4, "WITH_EXPLICIT_URL"

    const-string v5, "ExplicitUrl"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_EXPLICIT_URL:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v4, 0x3

    const-string v5, "FROM_ATMAIN"

    const-string v6, "ATMain"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ATMAIN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 72
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v5, 0x4

    const-string v6, "FROM_AUTH_TOKEN"

    const-string v7, "AuthToken"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTH_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 83
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v6, 0x5

    const-string v7, "FROM_ACCESS_TOKEN"

    const-string v8, "AccessToken"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 91
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v7, 0x6

    const-string v8, "FROM_ADP_TOKEN"

    const-string v9, "AdpToken"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ADP_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 113
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/4 v8, 0x7

    const-string v9, "REGISTER_DELEGATED_ACCOUNT"

    const-string v10, "RegisterDelegatedAccount"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->REGISTER_DELEGATED_ACCOUNT:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 126
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/16 v9, 0x8

    const-string v10, "WITH_DIRECTEDID_CREDENTIALS"

    const-string v11, "DirectedIdCredentials"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 139
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/16 v10, 0x9

    const-string v11, "WITH_PRIMARY_DIRECTEDID_CREDENTIALS"

    const-string v12, "PrimaryDirectedIdCredentials"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_PRIMARY_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 152
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/16 v11, 0xa

    const-string v12, "WITH_LINK_CODE"

    const-string v13, "LinkCode"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LINK_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 162
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/16 v12, 0xb

    const-string v13, "WITH_SSO_CODE"

    const-string v14, "SSOCode"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_SSO_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 172
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/16 v13, 0xc

    const-string v14, "ANONYMOUS"

    const-string v15, "Anonymous"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->ANONYMOUS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 179
    new-instance v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/16 v14, 0xd

    const-string v15, "FROM_AUTHORIZATION_CODE"

    const-string v13, "AuthorizationCode"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/identity/auth/device/api/RegistrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/16 v13, 0xe

    new-array v13, v13, [Lcom/amazon/identity/auth/device/api/RegistrationType;

    .line 13
    sget-object v15, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LOGIN_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v15, v13, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_EXPLICIT_URL:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ATMAIN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTH_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ADP_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->REGISTER_DELEGATED_ACCOUNT:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_PRIMARY_DIRECTEDID_CREDENTIALS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_LINK_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->WITH_SSO_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/identity/auth/device/api/RegistrationType;->ANONYMOUS:Lcom/amazon/identity/auth/device/api/RegistrationType;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/amazon/identity/auth/device/api/RegistrationType;->$VALUES:[Lcom/amazon/identity/auth/device/api/RegistrationType;

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

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/RegistrationType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/RegistrationType;
    .locals 5

    .line 204
    invoke-static {}, Lcom/amazon/identity/auth/device/api/RegistrationType;->values()[Lcom/amazon/identity/auth/device/api/RegistrationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 206
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/RegistrationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/RegistrationType;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/RegistrationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/RegistrationType;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/identity/auth/device/api/RegistrationType;->$VALUES:[Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/RegistrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/RegistrationType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/RegistrationType;->mName:Ljava/lang/String;

    return-object v0
.end method
