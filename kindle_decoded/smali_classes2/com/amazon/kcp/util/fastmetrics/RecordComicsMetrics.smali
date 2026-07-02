.class public final Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics;
.super Ljava/lang/Object;
.source "RecordComicsMetrics.kt"


# static fields
.field private static final FIELD_KEY_MERGE_ACCOUNT_ACTION:Ljava/lang/String; = "action"

.field private static final FIELD_KEY_MERGE_ACCOUNT_MESSAGE:Ljava/lang/String; = "message"

.field private static final FIELD_KEY_ONBOARDING_CX_ACTIONS_ELEMENT_NAME:Ljava/lang/String; = "element_name"

.field private static final FIELD_KEY_ONBOARDING_CX_ACTIONS_ELEMENT_POSITION:Ljava/lang/String; = "element_position"

.field private static final FIELD_KEY_ONBOARDING_CX_ACTIONS_ELEMENT_SEQUENCE_TOTAL:Ljava/lang/String; = "element_sequence_total"

.field private static final FIELD_KEY_ONBOARDING_CX_ACTIONS_ELEMENT_TYPE:Ljava/lang/String; = "element_type"

.field private static final FIELD_KEY_ONBOARDING_CX_ACTIONS_USER_ACTION:Ljava/lang/String; = "user_action"

.field private static final MERGE_ACCOUNT_ACTION_ERROR:Ljava/lang/String; = "error"

.field private static final MERGE_ACCOUNT_ACTION_START:Ljava/lang/String; = "start"

.field private static final MERGE_ACCOUNT_ACTION_SUCCESS:Ljava/lang/String; = "success"

.field private static final ONBOARDING_CX_ACTIONS_ELEMENT_NAME_BROCHURE:Ljava/lang/String; = "Comics_Day_One_Brochure"

.field private static final ONBOARDING_CX_ACTIONS_ELEMENT_TYPE_BROCHURE:Ljava/lang/String; = "brochure"

.field private static final ONBOARDING_CX_ACTIONS_ELEMENT_TYPE_TOOLTIP:Ljava/lang/String; = "tooltip"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordDay1BrochureMetric(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V
    .locals 3

    const-string/jumbo v0, "userAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ONBOARDING_CX_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ONBOARDING_CX_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1BrochureMetric$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1BrochureMetric$1;-><init>(IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    .line 70
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final recordDay1TooltipMetric(Ljava/lang/String;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V
    .locals 3

    const-string/jumbo v0, "tooltipName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ONBOARDING_CX_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ONBOARDING_CX_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/RecordComicsMetrics$recordDay1TooltipMetric$1;-><init>(Ljava/lang/String;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    .line 57
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
