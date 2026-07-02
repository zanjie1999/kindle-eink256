.class public final enum Lcom/amazon/identity/auth/device/api/SigninOption;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/SigninOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/SigninOption;

.field public static final enum MyAccountSignin:Lcom/amazon/identity/auth/device/api/SigninOption;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WebviewConfirmCredentials:Lcom/amazon/identity/auth/device/api/SigninOption;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WebviewCreateAccount:Lcom/amazon/identity/auth/device/api/SigninOption;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WebviewForgotPassword:Lcom/amazon/identity/auth/device/api/SigninOption;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum WebviewSignin:Lcom/amazon/identity/auth/device/api/SigninOption;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    new-instance v0, Lcom/amazon/identity/auth/device/api/SigninOption;

    const/4 v1, 0x0

    const-string v2, "WebviewSignin"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/api/SigninOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    .line 40
    new-instance v0, Lcom/amazon/identity/auth/device/api/SigninOption;

    const/4 v2, 0x1

    const-string v3, "WebviewCreateAccount"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/api/SigninOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewCreateAccount:Lcom/amazon/identity/auth/device/api/SigninOption;

    .line 56
    new-instance v0, Lcom/amazon/identity/auth/device/api/SigninOption;

    const/4 v3, 0x2

    const-string v4, "MyAccountSignin"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/api/SigninOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/SigninOption;->MyAccountSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    .line 66
    new-instance v0, Lcom/amazon/identity/auth/device/api/SigninOption;

    const/4 v4, 0x3

    const-string v5, "WebviewConfirmCredentials"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/device/api/SigninOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewConfirmCredentials:Lcom/amazon/identity/auth/device/api/SigninOption;

    .line 71
    new-instance v0, Lcom/amazon/identity/auth/device/api/SigninOption;

    const/4 v5, 0x4

    const-string v6, "WebviewForgotPassword"

    invoke-direct {v0, v6, v5}, Lcom/amazon/identity/auth/device/api/SigninOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewForgotPassword:Lcom/amazon/identity/auth/device/api/SigninOption;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/identity/auth/device/api/SigninOption;

    .line 16
    sget-object v7, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewCreateAccount:Lcom/amazon/identity/auth/device/api/SigninOption;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/SigninOption;->MyAccountSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewConfirmCredentials:Lcom/amazon/identity/auth/device/api/SigninOption;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/identity/auth/device/api/SigninOption;->$VALUES:[Lcom/amazon/identity/auth/device/api/SigninOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/SigninOption;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/identity/auth/device/api/SigninOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/SigninOption;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/SigninOption;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/api/SigninOption;->$VALUES:[Lcom/amazon/identity/auth/device/api/SigninOption;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/SigninOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/SigninOption;

    return-object v0
.end method
