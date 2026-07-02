.class public final enum Lcom/amazon/kindle/services/authentication/TokenKey;
.super Ljava/lang/Enum;
.source "TokenKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/services/authentication/TokenKey$Option;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/authentication/TokenKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum ACCESS_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum ACCOUNT_POOL:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum ACCOUNT_SECRETS:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum ADP_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum COR:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum DEVICE_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum DEVICE_SERIAL_NUMBER:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum LEGACY_ACCOUNT_SECRETS:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum PRIVATE_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum USER_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum XFSN_COOKIE:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

.field public static final enum XMAIN_AND_XACB_DEVICE_PFM_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;


# instance fields
.field private final options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/authentication/TokenKey$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    const/4 v1, 0x0

    const-string v2, "ACCESS_TOKEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCESS_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 14
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v4, 0x1

    const-string v5, "ADP_TOKEN"

    invoke-direct {v0, v5, v4, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->ADP_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 15
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v5, 0x2

    const-string v6, "PRIVATE_KEY"

    invoke-direct {v0, v6, v5, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PRIVATE_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 16
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v6, 0x3

    const-string v7, "XFSN_COOKIE"

    invoke-direct {v0, v7, v6, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->XFSN_COOKIE:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 17
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v7, 0x4

    const-string v8, "LEGACY_ACCOUNT_SECRETS"

    invoke-direct {v0, v8, v7, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->LEGACY_ACCOUNT_SECRETS:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 18
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/4 v8, 0x5

    const-string v9, "DEVICE_SERIAL_NUMBER"

    invoke-direct {v0, v9, v8, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_SERIAL_NUMBER:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 19
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v4, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    sget-object v9, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v9, v3, v1

    const/4 v9, 0x6

    const-string v10, "DEVICE_NAME"

    invoke-direct {v0, v10, v9, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 20
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v4, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    sget-object v10, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v10, v3, v1

    const/4 v10, 0x7

    const-string v11, "DEVICE_EMAIL"

    invoke-direct {v0, v11, v10, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 21
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v4, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    sget-object v11, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v11, v3, v1

    const/16 v11, 0x8

    const-string v12, "USER_NAME"

    invoke-direct {v0, v12, v11, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 22
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v4, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    sget-object v12, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v12, v3, v1

    const/16 v12, 0x9

    const-string v13, "USER_EMAIL"

    invoke-direct {v0, v13, v12, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 23
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v4, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    sget-object v13, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v13, v3, v1

    const/16 v13, 0xa

    const-string v14, "COR"

    invoke-direct {v0, v14, v13, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 24
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v4, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    sget-object v14, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v14, v3, v1

    const/16 v14, 0xb

    const-string v15, "PFM"

    invoke-direct {v0, v15, v14, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 25
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/16 v15, 0xc

    const-string v14, "XMAIN_AND_XACB_COOKIES"

    invoke-direct {v0, v14, v15, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 26
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/16 v14, 0xd

    const-string v15, "XMAIN_AND_XACB_DEVICE_PFM_KEY"

    invoke-direct {v0, v15, v14, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_DEVICE_PFM_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 27
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/16 v15, 0xe

    const-string v14, "ACCOUNT_SECRETS"

    invoke-direct {v0, v14, v15, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCOUNT_SECRETS:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 28
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v1, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    const/16 v14, 0xf

    const-string v15, "ACCOUNT_POOL"

    invoke-direct {v0, v15, v14, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCOUNT_POOL:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 29
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    new-array v3, v4, [Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    sget-object v15, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->DEVICE_DATA:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    aput-object v15, v3, v1

    const/16 v15, 0x10

    const-string v14, "DEVICE_TYPE"

    invoke-direct {v0, v14, v15, v2, v3}, Lcom/amazon/kindle/services/authentication/TokenKey;-><init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V

    sput-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/16 v2, 0x11

    new-array v2, v2, [Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 12
    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCESS_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v3, v2, v1

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->ADP_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v4

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PRIVATE_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v5

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XFSN_COOKIE:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v6

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->LEGACY_ACCOUNT_SECRETS:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v7

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_SERIAL_NUMBER:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v8

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v9

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v10

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v11

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v12

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    aput-object v1, v2, v13

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/16 v3, 0xb

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_COOKIES:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/16 v3, 0xc

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->XMAIN_AND_XACB_DEVICE_PFM_KEY:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/16 v3, 0xd

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCOUNT_SECRETS:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/16 v3, 0xe

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCOUNT_POOL:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/16 v3, 0xf

    aput-object v1, v2, v3

    aput-object v0, v2, v15

    sput-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->$VALUES:[Lcom/amazon/kindle/services/authentication/TokenKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/TokenKey;->options:Ljava/util/Set;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/services/authentication/TokenKey$Option;[Lcom/amazon/kindle/services/authentication/TokenKey$Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/authentication/TokenKey$Option;",
            "[",
            "Lcom/amazon/kindle/services/authentication/TokenKey$Option;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    invoke-static {p3, p4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/TokenKey;->options:Ljava/util/Set;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/authentication/TokenKey;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/authentication/TokenKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/authentication/TokenKey;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->$VALUES:[Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/authentication/TokenKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/authentication/TokenKey;

    return-object v0
.end method


# virtual methods
.method options()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/authentication/TokenKey$Option;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenKey;->options:Ljava/util/Set;

    return-object v0
.end method
