.class public final enum Lcom/amazon/identity/auth/device/api/AuthenticationType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/AuthenticationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/AuthenticationType;

.field public static final enum ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum DeviceAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum None:Lcom/amazon/identity/auth/device/api/AuthenticationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final mRequireHttps:Z

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->None:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 17
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;

    const-string v1, "DeviceAuthenticator"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->DeviceAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 23
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;

    const/4 v1, 0x2

    const-string v4, "ADPAuthenticator"

    invoke-direct {v0, v4, v1, v4, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 28
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;

    const/4 v4, 0x3

    const-string v5, "OAuth"

    invoke-direct {v0, v5, v4, v5, v3}, Lcom/amazon/identity/auth/device/api/AuthenticationType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 6
    sget-object v6, Lcom/amazon/identity/auth/device/api/AuthenticationType;->None:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    aput-object v6, v5, v2

    sget-object v2, Lcom/amazon/identity/auth/device/api/AuthenticationType;->DeviceAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    aput-object v2, v5, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    aput-object v2, v5, v1

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/identity/auth/device/api/AuthenticationType;->$VALUES:[Lcom/amazon/identity/auth/device/api/AuthenticationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->mValue:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->mRequireHttps:Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationType;
    .locals 6
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->values()[Lcom/amazon/identity/auth/device/api/AuthenticationType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 66
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/AuthenticationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/AuthenticationType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->$VALUES:[Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/AuthenticationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/AuthenticationType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public requireHttps()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->mRequireHttps:Z

    return v0
.end method
