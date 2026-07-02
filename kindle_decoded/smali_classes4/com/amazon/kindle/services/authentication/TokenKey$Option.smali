.class final enum Lcom/amazon/kindle/services/authentication/TokenKey$Option;
.super Ljava/lang/Enum;
.source "TokenKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/authentication/TokenKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/authentication/TokenKey$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/authentication/TokenKey$Option;

.field public static final enum CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

.field public static final enum DEVICE_DATA:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

.field public static final enum EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v1, 0x0

    const-string v2, "CACHING_ENABLED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/services/authentication/TokenKey$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    .line 59
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v2, 0x1

    const-string v3, "EVENTS_ENABLED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/services/authentication/TokenKey$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    .line 64
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v3, 0x2

    const-string v4, "DEVICE_DATA"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/services/authentication/TokenKey$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->DEVICE_DATA:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    .line 48
    sget-object v5, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->$VALUES:[Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/authentication/TokenKey$Option;
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/authentication/TokenKey$Option;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->$VALUES:[Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    return-object v0
.end method
