.class public final enum Lcom/amazon/kindle/services/download/AssetDeliveryType;
.super Ljava/lang/Enum;
.source "AssetDeliveryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/download/AssetDeliveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/download/AssetDeliveryType;

.field public static final enum DYNAMIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

.field public static final enum STATIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/amazon/kindle/services/download/AssetDeliveryType;

    const/4 v1, 0x0

    const-string v2, "STATIC"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/services/download/AssetDeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetDeliveryType;->STATIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    .line 27
    new-instance v0, Lcom/amazon/kindle/services/download/AssetDeliveryType;

    const/4 v2, 0x1

    const-string v3, "DYNAMIC"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/services/download/AssetDeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetDeliveryType;->DYNAMIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/services/download/AssetDeliveryType;

    .line 18
    sget-object v4, Lcom/amazon/kindle/services/download/AssetDeliveryType;->STATIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/services/download/AssetDeliveryType;->$VALUES:[Lcom/amazon/kindle/services/download/AssetDeliveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetDeliveryType;
    .locals 3

    if-nez p0, :cond_0

    .line 39
    sget-object p0, Lcom/amazon/kindle/services/download/AssetDeliveryType;->DYNAMIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    return-object p0

    .line 43
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/services/download/AssetDeliveryType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetDeliveryType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 45
    :catch_0
    const-class v0, Lcom/amazon/kindle/services/download/AssetDeliveryType;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "No AssetDeliveryType mapping for string %s. Returning STATIC"

    .line 46
    invoke-static {p0, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 47
    sget-object p0, Lcom/amazon/kindle/services/download/AssetDeliveryType;->DYNAMIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetDeliveryType;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kindle/services/download/AssetDeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/AssetDeliveryType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/download/AssetDeliveryType;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kindle/services/download/AssetDeliveryType;->$VALUES:[Lcom/amazon/kindle/services/download/AssetDeliveryType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/download/AssetDeliveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/download/AssetDeliveryType;

    return-object v0
.end method
