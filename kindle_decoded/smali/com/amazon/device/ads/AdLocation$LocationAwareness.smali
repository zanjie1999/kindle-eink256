.class final enum Lcom/amazon/device/ads/AdLocation$LocationAwareness;
.super Ljava/lang/Enum;
.source "AdLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocationAwareness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/AdLocation$LocationAwareness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AdLocation$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_DISABLED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_NORMAL:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    const/4 v1, 0x0

    const-string v2, "LOCATION_AWARENESS_NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/AdLocation$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    .line 43
    new-instance v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    const/4 v2, 0x1

    const-string v3, "LOCATION_AWARENESS_TRUNCATED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/ads/AdLocation$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    .line 44
    new-instance v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    const/4 v3, 0x2

    const-string v4, "LOCATION_AWARENESS_DISABLED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/ads/AdLocation$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    .line 40
    sget-object v5, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->$VALUES:[Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AdLocation$LocationAwareness;
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/AdLocation$LocationAwareness;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/device/ads/AdLocation$LocationAwareness;->$VALUES:[Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AdLocation$LocationAwareness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AdLocation$LocationAwareness;

    return-object v0
.end method
