.class public final enum Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;
.super Ljava/lang/Enum;
.source "RemoveInvalidDownloadsMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoveInvalidDownloadsOperationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

.field public static final enum COMPLETED:Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

.field public static final enum STARTED:Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    const/4 v2, 0x0

    const-string v3, "STARTED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;->STARTED:Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    const/4 v2, 0x1

    const-string v3, "COMPLETED"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;->COMPLETED:Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;

    return-object v0
.end method
