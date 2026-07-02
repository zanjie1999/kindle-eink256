.class public final enum Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;
.super Ljava/lang/Enum;
.source "WifiNetworkStrength.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

.field public static final enum ONE_LINE:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

.field public static final enum THREE_LINES:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

.field public static final enum TWO_LINES:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    new-instance v1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    const/4 v2, 0x0

    const-string v3, "ONE_LINE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->ONE_LINE:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    const/4 v2, 0x1

    const-string v3, "TWO_LINES"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->TWO_LINES:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    const/4 v2, 0x2

    const-string v3, "THREE_LINES"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->THREE_LINES:Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->$VALUES:[Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;
    .locals 1

    const-class v0, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->$VALUES:[Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    invoke-virtual {v0}, [Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/ffs/model/WifiNetworkStrength;

    return-object v0
.end method
