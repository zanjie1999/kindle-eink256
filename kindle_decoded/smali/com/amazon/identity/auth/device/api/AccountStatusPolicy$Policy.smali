.class public final enum Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/AccountStatusPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

.field public static final enum DEFAULT:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum P1:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->DEFAULT:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    .line 89
    new-instance v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    const/4 v2, 0x1

    const-string v3, "P1"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->P1:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    .line 54
    sget-object v4, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->DEFAULT:Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->$VALUES:[Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

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

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->$VALUES:[Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AccountStatusPolicy$Policy;->mValue:Ljava/lang/String;

    return-object v0
.end method
