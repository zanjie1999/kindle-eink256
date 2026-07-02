.class public final Lcom/audible/license/rules/VoucherRulesValidator;
.super Ljava/lang/Object;
.source "VoucherRulesValidator.kt"


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/metrics/VoucherMetricRecorder;)V
    .locals 1

    const-string v0, "identityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voucherMetricRecorder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/rules/VoucherRulesValidator;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    iput-object p2, p0, Lcom/audible/license/rules/VoucherRulesValidator;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    return-void
.end method

.method public static synthetic validateRules$default(Lcom/audible/license/rules/VoucherRulesValidator;Ljava/util/List;Ljava/util/Date;Lcom/audible/mobile/domain/CustomerId;ILjava/lang/Object;)Lcom/audible/license/rules/ValidationResult;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 30
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/audible/license/rules/VoucherRulesValidator;->validateRules(Ljava/util/List;Ljava/util/Date;Lcom/audible/mobile/domain/CustomerId;)Lcom/audible/license/rules/ValidationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final validateRules(Ljava/util/List;)Lcom/audible/license/rules/ValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/license/rules/VoucherRule;",
            ">;)",
            "Lcom/audible/license/rules/ValidationResult;"
        }
    .end annotation

    const-string v0, "rules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/audible/license/rules/VoucherRulesValidator;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v1}, Lcom/audible/mobile/identity/IdentityManager;->getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/audible/license/rules/VoucherRulesValidator;->validateRules(Ljava/util/List;Ljava/util/Date;Lcom/audible/mobile/domain/CustomerId;)Lcom/audible/license/rules/ValidationResult;

    move-result-object p1

    return-object p1
.end method

.method public final validateRules(Ljava/util/List;Ljava/util/Date;Lcom/audible/mobile/domain/CustomerId;)Lcom/audible/license/rules/ValidationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/license/rules/VoucherRule;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/audible/mobile/domain/CustomerId;",
            ")",
            "Lcom/audible/license/rules/ValidationResult;"
        }
    .end annotation

    const-string v0, "rules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object p1, p0, Lcom/audible/license/rules/VoucherRulesValidator;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 36
    sget-object p2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherValidator:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 37
    sget-object p3, Lcom/audible/license/metrics/MetricNames;->FailedValidationEmptyRules:Lcom/audible/license/metrics/MetricNames;

    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 39
    sget-object p1, Lcom/audible/license/rules/ValidationResult;->FailedWithEmptyRules:Lcom/audible/license/rules/ValidationResult;

    return-object p1

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/license/rules/VoucherRule;

    .line 44
    instance-of v1, v0, Lcom/audible/license/rules/DefaultExpiresRule;

    if-eqz v1, :cond_2

    .line 45
    check-cast v0, Lcom/audible/license/rules/DefaultExpiresRule;

    invoke-virtual {v0}, Lcom/audible/license/rules/DefaultExpiresRule;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object p1, p0, Lcom/audible/license/rules/VoucherRulesValidator;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 47
    sget-object p2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherValidator:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 48
    sget-object p3, Lcom/audible/license/metrics/MetricNames;->FailedValidationExpired:Lcom/audible/license/metrics/MetricNames;

    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 50
    sget-object p1, Lcom/audible/license/rules/ValidationResult;->FailedDefaultExpiredRule:Lcom/audible/license/rules/ValidationResult;

    return-object p1

    .line 53
    :cond_2
    instance-of v1, v0, Lcom/audible/license/rules/AllowedUsersRule;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_3

    .line 54
    check-cast v0, Lcom/audible/license/rules/AllowedUsersRule;

    invoke-virtual {v0}, Lcom/audible/license/rules/AllowedUsersRule;->getAllowedDirectedIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_3
    iget-object p1, p0, Lcom/audible/license/rules/VoucherRulesValidator;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 56
    sget-object p2, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherValidator:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 57
    sget-object p3, Lcom/audible/license/metrics/MetricNames;->FailedValidationNotAllowedUser:Lcom/audible/license/metrics/MetricNames;

    .line 55
    invoke-virtual {p1, p2, p3}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 59
    sget-object p1, Lcom/audible/license/rules/ValidationResult;->FailedNotAllowedUserRule:Lcom/audible/license/rules/ValidationResult;

    return-object p1

    .line 64
    :cond_4
    sget-object p1, Lcom/audible/license/rules/ValidationResult;->Success:Lcom/audible/license/rules/ValidationResult;

    return-object p1
.end method
