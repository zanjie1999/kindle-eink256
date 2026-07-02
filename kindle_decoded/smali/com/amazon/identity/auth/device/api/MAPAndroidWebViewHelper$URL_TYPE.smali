.class final enum Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "URL_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

.field public static final enum CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

.field public static final enum REGISTER:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

.field public static final enum REGULAR:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

.field public static final enum SIGNIN:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 123
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    const/4 v1, 0x0

    const-string v2, "REGULAR"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->REGULAR:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    .line 124
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    const/4 v2, 0x1

    const-string v3, "SIGNIN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->SIGNIN:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    .line 125
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    const/4 v3, 0x2

    const-string v4, "REGISTER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    .line 126
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    const/4 v4, 0x3

    const-string v5, "CONFIRM_CREDENTIAL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    .line 121
    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->REGULAR:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->SIGNIN:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;
    .locals 1

    .line 121
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;
    .locals 1

    .line 121
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    return-object v0
.end method
