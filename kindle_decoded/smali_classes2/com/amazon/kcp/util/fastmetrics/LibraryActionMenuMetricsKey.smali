.class public final enum Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;
.super Ljava/lang/Enum;
.source "RecordLibraryActionButtonMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

.field public static final enum ACTION_TYPE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

.field public static final enum BOOK_DATA:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

.field public static final enum LIBRARY_ACTION:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

.field public static final enum TAB_ORIGIN:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    const/4 v2, 0x0

    const-string v3, "TAB_ORIGIN"

    const-string v4, "tab_origin"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->TAB_ORIGIN:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    const/4 v2, 0x1

    const-string v3, "ACTION_TYPE"

    const-string v4, "action_type"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->ACTION_TYPE:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    const/4 v2, 0x2

    const-string v3, "LIBRARY_ACTION"

    const-string v4, "library_action"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->LIBRARY_ACTION:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    const/4 v2, 0x3

    const-string v3, "BOOK_DATA"

    const-string v4, "book_data"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->BOOK_DATA:Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsKey;->value:Ljava/lang/String;

    return-object v0
.end method
