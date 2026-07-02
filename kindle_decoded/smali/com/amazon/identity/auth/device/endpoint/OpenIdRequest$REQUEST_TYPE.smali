.class public final enum Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REQUEST_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field public static final enum AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field public static final enum CALLBACK_FOR_3P_LOGIN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field public static final enum CNEP:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field public static final enum CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field public static final enum FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field public static final enum REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

.field public static final enum SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 132
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    const/4 v1, 0x0

    const-string v2, "SIGN_IN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 138
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    const/4 v2, 0x1

    const-string v3, "REGISTER"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 144
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    const/4 v3, 0x2

    const-string v4, "CONFIRM_CREDENTIAL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 150
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    const/4 v4, 0x3

    const-string v5, "AUTHENTICATE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 158
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    const/4 v5, 0x4

    const-string v6, "FORGOT_PASSWORD"

    invoke-direct {v0, v6, v5}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 164
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    const/4 v6, 0x5

    const-string v7, "CALLBACK_FOR_3P_LOGIN"

    invoke-direct {v0, v7, v6}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CALLBACK_FOR_3P_LOGIN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 171
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    const/4 v7, 0x6

    const-string v8, "CNEP"

    invoke-direct {v0, v8, v7}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CNEP:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    .line 126
    sget-object v9, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CALLBACK_FOR_3P_LOGIN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->$VALUES:[Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;
    .locals 1

    .line 126
    const-class v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;
    .locals 1

    .line 126
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->$VALUES:[Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    return-object v0
.end method
