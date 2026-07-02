.class public final enum Lcom/audible/mobile/contentlicense/networking/request/Quality;
.super Ljava/lang/Enum;
.source "Quality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/contentlicense/networking/request/Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/contentlicense/networking/request/Quality;

.field public static final enum EXTREME:Lcom/audible/mobile/contentlicense/networking/request/Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Extreme"
    .end annotation
.end field

.field public static final enum HIGH:Lcom/audible/mobile/contentlicense/networking/request/Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "High"
    .end annotation
.end field

.field public static final enum LOW:Lcom/audible/mobile/contentlicense/networking/request/Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Low"
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/audible/mobile/contentlicense/networking/request/Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Normal"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/contentlicense/networking/request/Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;->LOW:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    .line 14
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/contentlicense/networking/request/Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;->NORMAL:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    .line 17
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/contentlicense/networking/request/Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;->HIGH:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    .line 20
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;

    const/4 v4, 0x3

    const-string v5, "EXTREME"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/contentlicense/networking/request/Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;->EXTREME:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/mobile/contentlicense/networking/request/Quality;

    .line 10
    sget-object v6, Lcom/audible/mobile/contentlicense/networking/request/Quality;->LOW:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/request/Quality;->NORMAL:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/request/Quality;->HIGH:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/mobile/contentlicense/networking/request/Quality;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/request/Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/Quality;
    .locals 1

    .line 10
    const-class v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/contentlicense/networking/request/Quality;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/contentlicense/networking/request/Quality;
    .locals 1

    .line 10
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/request/Quality;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/request/Quality;

    invoke-virtual {v0}, [Lcom/audible/mobile/contentlicense/networking/request/Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/contentlicense/networking/request/Quality;

    return-object v0
.end method
