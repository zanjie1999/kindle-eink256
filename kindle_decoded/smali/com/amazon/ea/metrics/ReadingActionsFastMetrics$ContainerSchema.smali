.class final enum Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;
.super Ljava/lang/Enum;
.source "ReadingActionsFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ContainerSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

.field public static final enum DEVICE_STATUS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

.field public static final enum DISPLAY_END:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

.field public static final enum DISPLAY_START:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

.field public static final enum ENTRY_POINT:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

.field public static final enum READING_ACTION:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

.field public static final enum READING_ACTION_CONTAINER:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

.field public static final enum UUID:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

.field private static final schemaName:Ljava/lang/String; = "reading_actions_containers"

.field private static final version:I


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 70
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    const/4 v1, 0x0

    const-string v2, "READING_ACTION"

    const-string/jumbo v3, "reading_action"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->READING_ACTION:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    .line 71
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    const/4 v2, 0x1

    const-string v3, "READING_ACTION_CONTAINER"

    const-string/jumbo v4, "reading_action_container"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->READING_ACTION_CONTAINER:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    .line 72
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    const/4 v3, 0x2

    const-string v4, "DISPLAY_START"

    const-string v5, "display_start"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DISPLAY_START:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    .line 73
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    const/4 v4, 0x3

    const-string v5, "DISPLAY_END"

    const-string v6, "display_end"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DISPLAY_END:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    .line 74
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    const/4 v5, 0x4

    const-string v6, "ENTRY_POINT"

    const-string v7, "entry_point"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->ENTRY_POINT:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    .line 75
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    const/4 v6, 0x5

    const-string v7, "DEVICE_STATUS"

    const-string v8, "device_status"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DEVICE_STATUS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    .line 76
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    const/4 v7, 0x6

    const-string v8, "UUID"

    const-string v9, "container_uuid"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->UUID:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    .line 69
    sget-object v9, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->READING_ACTION:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->READING_ACTION_CONTAINER:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DISPLAY_START:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DISPLAY_END:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->ENTRY_POINT:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->DEVICE_STATUS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->$VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

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

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->key:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;
    .locals 1

    .line 69
    const-class v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->$VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ContainerSchema;

    return-object v0
.end method
