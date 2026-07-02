.class final enum Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;
.super Ljava/lang/Enum;
.source "ReadingActionsFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WidgetsSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

.field public static final enum CONTAINER_UUID:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

.field public static final enum WIDGET_ACTION:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

.field public static final enum WIDGET_NAME:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

.field private static final schemaName:Ljava/lang/String; = "reading_actions_widgets"

.field private static final version:I


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 94
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    const/4 v1, 0x0

    const-string v2, "WIDGET_ACTION"

    const-string/jumbo v3, "widget_action"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->WIDGET_ACTION:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    .line 95
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    const/4 v2, 0x1

    const-string v3, "WIDGET_NAME"

    const-string/jumbo v4, "widget_name"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->WIDGET_NAME:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    .line 96
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    const/4 v3, 0x2

    const-string v4, "CONTAINER_UUID"

    const-string v5, "container_uuid"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->CONTAINER_UUID:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    .line 93
    sget-object v5, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->WIDGET_ACTION:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->WIDGET_NAME:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->$VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

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

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->key:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;
    .locals 1

    .line 93
    const-class v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->$VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$WidgetsSchema;

    return-object v0
.end method
