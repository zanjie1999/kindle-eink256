.class public final enum Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;
.super Ljava/lang/Enum;
.source "AudiblePlayerMetricsReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

.field public static final enum ACTION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

.field public static final enum CONTEXT:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

.field public static final enum DURATION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

.field public static final enum READING_MODE:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    const/4 v1, 0x0

    const-string v2, "CONTEXT"

    const-string v3, "context"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->CONTEXT:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    .line 47
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    const/4 v2, 0x1

    const-string v3, "ACTION"

    const-string v4, "action"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->ACTION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    .line 48
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    const/4 v3, 0x2

    const-string v4, "READING_MODE"

    const-string v5, "reading_mode"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->READING_MODE:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    .line 49
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    const/4 v4, 0x3

    const-string v5, "DURATION"

    const-string v6, "duration"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->DURATION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    .line 44
    sget-object v6, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->CONTEXT:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->ACTION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->READING_MODE:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->$VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

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

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$600(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;
    .locals 1

    .line 44
    const-class v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;
    .locals 1

    .line 44
    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->$VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    return-object v0
.end method
