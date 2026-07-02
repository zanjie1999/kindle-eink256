.class public final enum Lcom/amazon/device/ads/AmazonOOActionCode;
.super Ljava/lang/Enum;
.source "AmazonOOActionCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/AmazonOOActionCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AmazonOOActionCode;

.field public static final enum DISPLAY:Lcom/amazon/device/ads/AmazonOOActionCode;

.field public static final enum HANDLED:Lcom/amazon/device/ads/AmazonOOActionCode;

.field public static final enum REJECT:Lcom/amazon/device/ads/AmazonOOActionCode;


# instance fields
.field final actionCode:Lcom/amazon/device/ads/ActionCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/amazon/device/ads/AmazonOOActionCode;

    sget-object v1, Lcom/amazon/device/ads/ActionCode;->REJECT:Lcom/amazon/device/ads/ActionCode;

    const/4 v2, 0x0

    const-string v3, "REJECT"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/device/ads/AmazonOOActionCode;-><init>(Ljava/lang/String;ILcom/amazon/device/ads/ActionCode;)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOActionCode;->REJECT:Lcom/amazon/device/ads/AmazonOOActionCode;

    .line 17
    new-instance v0, Lcom/amazon/device/ads/AmazonOOActionCode;

    sget-object v1, Lcom/amazon/device/ads/ActionCode;->DISPLAY:Lcom/amazon/device/ads/ActionCode;

    const/4 v3, 0x1

    const-string v4, "DISPLAY"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/device/ads/AmazonOOActionCode;-><init>(Ljava/lang/String;ILcom/amazon/device/ads/ActionCode;)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOActionCode;->DISPLAY:Lcom/amazon/device/ads/AmazonOOActionCode;

    .line 21
    new-instance v0, Lcom/amazon/device/ads/AmazonOOActionCode;

    sget-object v1, Lcom/amazon/device/ads/ActionCode;->HANDLED:Lcom/amazon/device/ads/ActionCode;

    const/4 v4, 0x2

    const-string v5, "HANDLED"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/device/ads/AmazonOOActionCode;-><init>(Ljava/lang/String;ILcom/amazon/device/ads/ActionCode;)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOActionCode;->HANDLED:Lcom/amazon/device/ads/AmazonOOActionCode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/device/ads/AmazonOOActionCode;

    .line 9
    sget-object v5, Lcom/amazon/device/ads/AmazonOOActionCode;->REJECT:Lcom/amazon/device/ads/AmazonOOActionCode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/amazon/device/ads/AmazonOOActionCode;->DISPLAY:Lcom/amazon/device/ads/AmazonOOActionCode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/amazon/device/ads/AmazonOOActionCode;->$VALUES:[Lcom/amazon/device/ads/AmazonOOActionCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/device/ads/ActionCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/ActionCode;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/amazon/device/ads/AmazonOOActionCode;->actionCode:Lcom/amazon/device/ads/ActionCode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AmazonOOActionCode;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/device/ads/AmazonOOActionCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/AmazonOOActionCode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/AmazonOOActionCode;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/device/ads/AmazonOOActionCode;->$VALUES:[Lcom/amazon/device/ads/AmazonOOActionCode;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AmazonOOActionCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AmazonOOActionCode;

    return-object v0
.end method


# virtual methods
.method getActionCode()Lcom/amazon/device/ads/ActionCode;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOActionCode;->actionCode:Lcom/amazon/device/ads/ActionCode;

    return-object v0
.end method
