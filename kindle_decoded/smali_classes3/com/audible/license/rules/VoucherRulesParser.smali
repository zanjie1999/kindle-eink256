.class public final Lcom/audible/license/rules/VoucherRulesParser;
.super Ljava/lang/Object;
.source "VoucherRulesParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherRulesParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherRulesParser.kt\ncom/audible/license/rules/VoucherRulesParser\n*L\n1#1,155:1\n*E\n"
.end annotation


# static fields
.field private static final ALLOWED_USERS_RULE_NAME:Ljava/lang/String; = "AllowedUsersRule"

.field private static final EXPIRES_RULE_NAME:Ljava/lang/String; = "DefaultExpiresRule"

.field public static final INSTANCE:Lcom/audible/license/rules/VoucherRulesParser;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final NAME:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/audible/license/rules/VoucherRulesParser;

    invoke-direct {v0}, Lcom/audible/license/rules/VoucherRulesParser;-><init>()V

    sput-object v0, Lcom/audible/license/rules/VoucherRulesParser;->INSTANCE:Lcom/audible/license/rules/VoucherRulesParser;

    .line 19
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/license/rules/VoucherRulesParser;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/license/rules/VoucherRulesParser;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final parseAllowedUsersRule(Ljava/lang/String;Lcom/audible/license/metrics/VoucherMetricRecorder;)Lcom/audible/license/rules/AllowedUsersRule;
    .locals 2

    .line 113
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 116
    const-class v1, Lcom/audible/license/rules/AllowedUsersRuleParsed;

    .line 114
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/license/rules/AllowedUsersRuleParsed;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/audible/license/rules/AllowedUsersRuleParsed;->getParameters()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/license/rules/DirectedIdsParameter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/audible/license/rules/DirectedIdsParameter;->getDirectedIds()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 122
    sget-object p1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRulesParser:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 123
    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToParseAllowedUsersRule:Lcom/audible/license/metrics/MetricNames;

    .line 121
    invoke-virtual {p2, p1, v1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    return-object v0

    .line 127
    :cond_1
    new-instance p2, Lcom/audible/license/rules/AllowedUsersRule;

    invoke-direct {p2, p1}, Lcom/audible/license/rules/AllowedUsersRule;-><init>(Ljava/util/List;)V

    return-object p2
.end method

.method private final parseDefaultExpiresRule(Ljava/lang/String;Lcom/audible/license/metrics/VoucherMetricRecorder;)Lcom/audible/license/rules/DefaultExpiresRule;
    .locals 2

    .line 91
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 94
    const-class v1, Lcom/audible/license/rules/DefaultExpiresRuleParsed;

    .line 92
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/license/rules/DefaultExpiresRuleParsed;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/audible/license/rules/DefaultExpiresRuleParsed;->getParameters()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/license/rules/ExpiresParameter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/audible/license/rules/ExpiresParameter;->getExpireDate()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 100
    sget-object p1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRulesParser:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 101
    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToParseDefaultExpiredRule:Lcom/audible/license/metrics/MetricNames;

    .line 99
    invoke-virtual {p2, p1, v1}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    return-object v0

    .line 105
    :cond_1
    new-instance p2, Lcom/audible/license/rules/DefaultExpiresRule;

    invoke-direct {p2, p1}, Lcom/audible/license/rules/DefaultExpiresRule;-><init>(Ljava/util/Date;)V

    return-object p2
.end method

.method public static final parseRules(Lorg/json/JSONArray;Lcom/audible/license/metrics/VoucherMetricRecorder;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/audible/license/metrics/VoucherMetricRecorder;",
            ")",
            "Ljava/util/List<",
            "Lcom/audible/license/rules/VoucherRule;",
            ">;"
        }
    .end annotation

    const-string v0, "rules"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetricRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rules cannot be null"

    .line 37
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cdnMetricRecorder cannot be null"

    .line 38
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_9

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 50
    sget-object p0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRulesParser:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 51
    sget-object v0, Lcom/audible/license/metrics/MetricNames;->FailedToParseVoucherRulesObject:Lcom/audible/license/metrics/MetricNames;

    .line 49
    invoke-virtual {p1, p0, v0}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    return-object v4

    :cond_1
    const-string v5, "name"

    .line 55
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const v8, -0x551e3c91

    const-string v9, "rule.toString()"

    if-eq v7, v8, :cond_5

    const v8, 0x2e33147c

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v7, "AllowedUsersRule"

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/audible/license/rules/VoucherRulesParser;->INSTANCE:Lcom/audible/license/rules/VoucherRulesParser;

    .line 64
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {v7, v3, p1}, Lcom/audible/license/rules/VoucherRulesParser;->parseAllowedUsersRule(Ljava/lang/String;Lcom/audible/license/metrics/VoucherMetricRecorder;)Lcom/audible/license/rules/AllowedUsersRule;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    return-object v4

    :cond_5
    const-string v7, "DefaultExpiresRule"

    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/audible/license/rules/VoucherRulesParser;->INSTANCE:Lcom/audible/license/rules/VoucherRulesParser;

    .line 60
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {v7, v3, p1}, Lcom/audible/license/rules/VoucherRulesParser;->parseDefaultExpiresRule(Ljava/lang/String;Lcom/audible/license/metrics/VoucherMetricRecorder;)Lcom/audible/license/rules/DefaultExpiresRule;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    return-object v4

    :cond_7
    :goto_1
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_8

    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    sget-object v0, Lcom/audible/license/rules/VoucherRulesParser;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Failed to parse {}."

    invoke-interface {v0, v1, v6, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    sget-object p0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRulesParser:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 78
    sget-object v0, Lcom/audible/license/metrics/MetricNames;->FailedToParseVoucherRulesObject:Lcom/audible/license/metrics/MetricNames;

    .line 79
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, p0, v0, v6}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordErrorMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/String;)V

    return-object v4

    :cond_9
    return-object v0
.end method
