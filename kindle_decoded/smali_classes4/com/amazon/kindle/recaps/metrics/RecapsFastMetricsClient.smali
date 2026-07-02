.class public final Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;
.super Ljava/lang/Object;
.source "RecapsFastMetricsClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapsFastMetricsClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapsFastMetricsClient.kt\ncom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient\n*L\n1#1,116:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

.field private static final TAG:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final mBookReadingFeaturesMetricSchema:Ljava/lang/String; = "recaps_book_reading_features"

.field private static mFastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics; = null

# The value of this static final field might be set in the static constructor
.field private static final mJumpForwardActionsMetricSchema:Ljava/lang/String; = "recaps_jump_forward_sheet_actions"

# The value of this static final field might be set in the static constructor
.field private static final mPositionConsumptionMetricSchema:Ljava/lang/String; = "recaps_position_consumption"

# The value of this static final field might be set in the static constructor
.field private static final mUserActionsMetricSchema:Ljava/lang/String; = "recaps_user_actions"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;-><init>()V

    sput-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    const-string v0, "recaps_user_actions"

    .line 43
    sput-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mUserActionsMetricSchema:Ljava/lang/String;

    const-string v0, "recaps_book_reading_features"

    .line 44
    sput-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mBookReadingFeaturesMetricSchema:Ljava/lang/String;

    const-string v0, "recaps_position_consumption"

    .line 45
    sput-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mPositionConsumptionMetricSchema:Ljava/lang/String;

    const-string v0, "recaps_jump_forward_sheet_actions"

    .line 46
    sput-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mJumpForwardActionsMetricSchema:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->TAG:Ljava/lang/String;

    .line 51
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->TAG:Ljava/lang/String;

    const-string v1, "Unable to initialize IKindleFastMetrics"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 51
    :goto_0
    sput-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mFastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final recordBookReadingFeature(Lcom/amazon/kindle/recaps/metrics/BookReadingFeature;Ljava/lang/String;)V
    .locals 3

    const-string v0, "bookReadingFeature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mFastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 76
    sget-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mBookReadingFeaturesMetricSchema:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/metrics/BookReadingFeature;->getBookReadingFeatureMetric()Ljava/lang/String;

    move-result-object p1

    const-string v2, "feature_name"

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "feature_value"

    .line 78
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 79
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method

.method public final recordJumpForwardSheetAction(Lcom/amazon/kindle/recaps/metrics/JumpForwardSheetUserAction;II)V
    .locals 3

    const-string v0, "jumpForwardSheetUserAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mFastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 109
    sget-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mJumpForwardActionsMetricSchema:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/metrics/JumpForwardSheetUserAction;->getJfsUserActionMetric()Ljava/lang/String;

    move-result-object p1

    const-string v2, "user_action"

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "current_book_position"

    .line 111
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "suggested_position"

    .line 112
    invoke-interface {v1, p1, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 113
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method

.method public final recordPositionConsumption(IILjava/lang/String;D)V
    .locals 3

    const-string v0, "readingMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mFastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 91
    sget-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mPositionConsumptionMetricSchema:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "start_position"

    .line 92
    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "end_position"

    .line 93
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "reading_mode"

    .line 94
    invoke-interface {v1, p1, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "time_taken_in_seconds"

    .line 95
    invoke-interface {v1, p1, p4, p5}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addDouble(Ljava/lang/String;D)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 96
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method

.method public final recordRecapsUserAction(Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;)V
    .locals 3

    const-string v0, "recapsUserAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mFastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 63
    sget-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->mUserActionsMetricSchema:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->getUserActionMetric()Ljava/lang/String;

    move-result-object p1

    const-string v2, "recaps_user_action"

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 65
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method
