.class public final enum Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;
.super Ljava/lang/Enum;
.source "SharedLibraryFilterFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharedFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

.field public static final enum MY_ITEMS_FILTER:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

.field public static final enum SHARED_ITEMS_FILTER:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    const/4 v2, 0x0

    const-string v3, "MY_ITEMS_FILTER"

    const-string v4, "my_items_filter"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->MY_ITEMS_FILTER:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    const/4 v2, 0x1

    const-string v3, "SHARED_ITEMS_FILTER"

    const-string v4, "shared_items_filter"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->SHARED_ITEMS_FILTER:Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/SharedLibraryFilterFastMetrics$SharedFilterType;->value:Ljava/lang/String;

    return-object v0
.end method
