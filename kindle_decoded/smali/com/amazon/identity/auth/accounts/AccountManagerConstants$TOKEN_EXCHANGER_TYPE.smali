.class public final enum Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/accounts/AccountManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TOKEN_EXCHANGER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

.field public static final enum DMS_FOR_ACCESS:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

.field public static final enum REFRESH_FOR_ACCESS:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

.field public static final enum REFRESH_FOR_COOKIES:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 174
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    const/4 v1, 0x0

    const-string v2, "REFRESH_FOR_ACCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;->REFRESH_FOR_ACCESS:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    .line 175
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    const/4 v2, 0x1

    const-string v3, "DMS_FOR_ACCESS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;->DMS_FOR_ACCESS:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    .line 176
    new-instance v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    const/4 v3, 0x2

    const-string v4, "REFRESH_FOR_COOKIES"

    invoke-direct {v0, v4, v3}, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;->REFRESH_FOR_COOKIES:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    .line 172
    sget-object v5, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;->REFRESH_FOR_ACCESS:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;->DMS_FOR_ACCESS:Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;->$VALUES:[Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;
    .locals 1

    .line 172
    const-class v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;
    .locals 1

    .line 172
    sget-object v0, Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;->$VALUES:[Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/accounts/AccountManagerConstants$TOKEN_EXCHANGER_TYPE;

    return-object v0
.end method
