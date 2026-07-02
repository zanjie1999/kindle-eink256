.class public final enum Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/FederatedAuthConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentityProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

.field public static final enum FACEBOOK:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum GOOGLE:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum LOGIN_WITH_AMAZON:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    const/4 v1, 0x0

    const-string v2, "GOOGLE"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->GOOGLE:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    const/4 v2, 0x1

    const-string v3, "FACEBOOK"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->FACEBOOK:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    .line 58
    new-instance v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    const/4 v3, 0x2

    const-string v4, "LOGIN_WITH_AMAZON"

    const-string v5, "LoginWithAmazon"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->LOGIN_WITH_AMAZON:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    .line 41
    sget-object v5, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->GOOGLE:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->FACEBOOK:Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->$VALUES:[Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

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

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->$VALUES:[Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/FederatedAuthConfig$IdentityProvider;->mValue:Ljava/lang/String;

    return-object v0
.end method
