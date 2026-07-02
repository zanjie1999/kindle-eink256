.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
.super Ljava/lang/Enum;
.source "ScanningMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

.field public static final enum BALANCED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

.field public static final enum HIGH_POWER_LOW_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

.field public static final enum LOW_POWER_HIGH_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

.field public static final enum PROHIBITED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const/4 v1, 0x0

    const-string v2, "PROHIBITED"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->PROHIBITED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    .line 6
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const/4 v2, 0x1

    const-string v3, "LOW_POWER_HIGH_LATENCY"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->LOW_POWER_HIGH_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    .line 7
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const/4 v3, 0x2

    const-string v4, "BALANCED"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->BALANCED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    .line 8
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const/4 v4, 0x3

    const-string v5, "HIGH_POWER_LOW_LATENCY"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->HIGH_POWER_LOW_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    .line 3
    sget-object v6, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->PROHIBITED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->LOW_POWER_HIGH_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->BALANCED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->mValue:I

    return-void
.end method

.method public static getFromValue(I)Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
    .locals 5

    .line 18
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 19
    iget v4, v3, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    return-object v0
.end method
