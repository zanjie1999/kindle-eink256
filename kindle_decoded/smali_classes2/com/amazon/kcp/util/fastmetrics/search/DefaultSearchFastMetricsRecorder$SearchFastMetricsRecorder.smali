.class final Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;
.super Ljava/lang/Object;
.source "SearchFastMetricsRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchFastMetricsRecorder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;

.field private static final Tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;

    .line 30
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Log.getTag(SearchFastMetricsRecorder::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;->Tag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder$SearchFastMetricsRecorder;->Tag:Ljava/lang/String;

    return-object v0
.end method
