.class public final enum Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;
.super Ljava/lang/Enum;
.source "WhisperJoinMetricName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

.field public static final enum FAILURE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

.field public static final enum SUCCESS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    const-string v3, "Success"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->SUCCESS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    .line 5
    new-instance v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    const-string v4, "Failure"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->FAILURE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    .line 3
    sget-object v4, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->SUCCESS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->$VALUES:[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->$VALUES:[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->mName:Ljava/lang/String;

    return-object v0
.end method
