.class public final enum Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;
.super Ljava/lang/Enum;
.source "FastMetricsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

.field public static final enum BOOKWIZARD_COMPLETED:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

.field public static final enum BOOKWIZARD_SHOWN:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

.field public static final enum BOOKWIZARD_STARTED:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    const/4 v1, 0x0

    const-string v2, "BOOKWIZARD_SHOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->BOOKWIZARD_SHOWN:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    new-instance v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    const/4 v2, 0x1

    const-string v3, "BOOKWIZARD_STARTED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->BOOKWIZARD_STARTED:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    new-instance v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    const/4 v3, 0x2

    const-string v4, "BOOKWIZARD_COMPLETED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->BOOKWIZARD_COMPLETED:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    .line 59
    sget-object v5, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->BOOKWIZARD_SHOWN:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->BOOKWIZARD_STARTED:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->$VALUES:[Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;
    .locals 1

    .line 59
    const-class v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    return-object p0
.end method

.method public static values()[Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->$VALUES:[Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    invoke-virtual {v0}, [Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$Event;

    return-object v0
.end method
