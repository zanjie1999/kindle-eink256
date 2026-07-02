.class public final enum Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;
.super Ljava/lang/Enum;
.source "NotesActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotesMenuSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

.field public static final Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting$Companion;

.field public static final enum OFF:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

.field public static final enum ON:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    const/4 v2, 0x0

    const-string v3, "ON"

    const-string v4, "On"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->ON:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    const/4 v2, 0x1

    const-string v3, "OFF"

    const-string v4, "Off"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->OFF:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->Companion:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting$Companion;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$NotesMenuSetting;->value:Ljava/lang/String;

    return-object v0
.end method
