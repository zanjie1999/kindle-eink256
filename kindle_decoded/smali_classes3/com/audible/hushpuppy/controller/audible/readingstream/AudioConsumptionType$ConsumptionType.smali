.class public final enum Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;
.super Ljava/lang/Enum;
.source "AudioConsumptionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsumptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

.field public static final enum IMMERSION_READING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

.field public static final enum LISTENING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

.field public static final enum UNKNOWN:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;


# instance fields
.field private consumptionTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    const/4 v1, 0x0

    const-string v2, "LISTENING"

    const-string v3, "ListeningOnly"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->LISTENING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    .line 53
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    const/4 v2, 0x1

    const-string v3, "IMMERSION_READING"

    const-string v4, "ImmersionReading"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->IMMERSION_READING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    .line 58
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    const-string v5, "Unknown"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->UNKNOWN:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    .line 43
    sget-object v5, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->LISTENING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->IMMERSION_READING:Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->$VALUES:[Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

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

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->consumptionTypeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;
    .locals 1

    .line 43
    const-class v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;
    .locals 1

    .line 43
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->$VALUES:[Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;

    return-object v0
.end method


# virtual methods
.method public getConsumptionTypeName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AudioConsumptionType$ConsumptionType;->consumptionTypeName:Ljava/lang/String;

    return-object v0
.end method
