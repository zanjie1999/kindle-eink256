.class public final enum Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;
.super Ljava/lang/Enum;
.source "ConsumptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

.field public static final enum DOWNLOAD:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Download"
    .end annotation
.end field

.field public static final enum STREAMING:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Streaming"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    const/4 v1, 0x0

    const-string v2, "STREAMING"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->STREAMING:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    .line 14
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->DOWNLOAD:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    .line 10
    sget-object v4, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->STREAMING:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;
    .locals 1

    .line 10
    const-class v0, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;
    .locals 1

    .line 10
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    invoke-virtual {v0}, [Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    return-object v0
.end method
