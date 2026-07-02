.class public final enum Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomerAccountTokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

.field public static final enum ACCESS_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

.field public static final enum AT_MAIN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

.field public static final enum AUTH_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 130
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    const/4 v1, 0x0

    const-string v2, "AT_MAIN"

    const-string v3, "ATMain"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->AT_MAIN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    .line 131
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    const/4 v2, 0x1

    const-string v3, "ACCESS_TOKEN"

    const-string v4, "AccessToken"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->ACCESS_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    .line 132
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    const/4 v3, 0x2

    const-string v4, "AUTH_TOKEN"

    const-string v5, "AuthToken"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->AUTH_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    .line 128
    sget-object v5, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->AT_MAIN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->ACCESS_TOKEN:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->$VALUES:[Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

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

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput-object p3, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;
    .locals 1

    .line 128
    const-class v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;
    .locals 1

    .line 128
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->$VALUES:[Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    invoke-virtual {v0}, [Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$CustomerAccountTokenType;->mValue:Ljava/lang/String;

    return-object v0
.end method
