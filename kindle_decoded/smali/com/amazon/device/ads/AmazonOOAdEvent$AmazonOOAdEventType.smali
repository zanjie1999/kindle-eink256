.class public final enum Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;
.super Ljava/lang/Enum;
.source "AmazonOOAdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOOAdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AmazonOOAdEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

.field public static final enum CLICKED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

.field public static final enum CLOSED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

.field public static final enum EXPANDED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

.field public static final enum OTHER:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

.field public static final enum RESIZED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    const/4 v1, 0x0

    const-string v2, "EXPANDED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->EXPANDED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    .line 39
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    const/4 v2, 0x1

    const-string v3, "CLOSED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->CLOSED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    .line 40
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    const/4 v3, 0x2

    const-string v4, "CLICKED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->CLICKED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    .line 41
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    const/4 v4, 0x3

    const-string v5, "RESIZED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->RESIZED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    .line 42
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    const/4 v5, 0x4

    const-string v6, "OTHER"

    invoke-direct {v0, v6, v5}, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->OTHER:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    .line 36
    sget-object v7, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->EXPANDED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->CLOSED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->CLICKED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->RESIZED:Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->$VALUES:[Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->$VALUES:[Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AmazonOOAdEvent$AmazonOOAdEventType;

    return-object v0
.end method
