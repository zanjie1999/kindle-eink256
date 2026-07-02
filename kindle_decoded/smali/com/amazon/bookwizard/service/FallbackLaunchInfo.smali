.class public final Lcom/amazon/bookwizard/service/FallbackLaunchInfo;
.super Lcom/amazon/bookwizard/service/LaunchInfo;
.source "FallbackLaunchInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 25
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/LaunchInfo;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "genreSelectionStep"

    const/4 v2, 0x0

    const-string/jumbo v3, "welcomeView"

    .line 27
    invoke-static {v3, v1, v2}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/FlowStep;->start()Lcom/amazon/bookwizard/service/FlowStep;

    const-string/jumbo v4, "welcomeStep"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isKU30DayEligibleStep"

    const-string v4, "genreSelectionView"

    .line 28
    invoke-static {v4, v3, v2}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "isKU7DayEligibleStep"

    const-string v6, "ku30DayUpsellStep"

    const-string v7, "ku30DayEligibleDecision"

    .line 29
    invoke-static {v7, v6, v5}, Lcom/amazon/bookwizard/service/FlowStep;->decision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ku7DayUpsellStep"

    const-string/jumbo v7, "ratingsViewStep"

    const-string v8, "ku7DayEligibleDecision"

    .line 30
    invoke-static {v8, v3, v7}, Lcom/amazon/bookwizard/service/FlowStep;->decision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v8

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v5, Lcom/amazon/bookwizard/service/StepFlavor;->KU_30_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    const-string v8, "ku30DayUpsellDecisionStep"

    const-string v9, "kuUpsellView"

    invoke-static {v9, v8, v2, v5}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "ratingsViewStepKU"

    const-string v6, "kuPayoffStep"

    const-string v10, "ku30DayAgreedDecision"

    .line 32
    invoke-static {v10, v6, v5}, Lcom/amazon/bookwizard/service/FlowStep;->decision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v8, Lcom/amazon/bookwizard/service/StepFlavor;->KU_7_DAY:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-static {v9, v6, v2, v8}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "recommendationsViewStep"

    const-string/jumbo v8, "ratingsView"

    .line 34
    invoke-static {v8, v3, v1}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v9

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "recommendationsViewStepKU"

    .line 35
    invoke-static {v8, v9, v1}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "recommendationsView"

    .line 36
    invoke-static {v1, v2, v7}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/bookwizard/service/FlowStep;->end()Lcom/amazon/bookwizard/service/FlowStep;

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v3, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-static {v1, v2, v5, v3}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->end()Lcom/amazon/bookwizard/service/FlowStep;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "genreSelectionsKUSubscribedStep"

    const-string/jumbo v3, "payoffView"

    .line 38
    invoke-static {v3, v2, v1}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/FlowStep;->end()Lcom/amazon/bookwizard/service/FlowStep;

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v3, Lcom/amazon/bookwizard/service/StepFlavor;->KU:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-static {v4, v6, v2, v3}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Lcom/amazon/bookwizard/service/Flow;

    const-string v2, "Fallback"

    invoke-direct {v1, v2, v0}, Lcom/amazon/bookwizard/service/Flow;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->flow:Lcom/amazon/bookwizard/service/Flow;

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Lcom/amazon/bookwizard/BookWizardPlugin;->setFallback(Z)V

    return-void
.end method


# virtual methods
.method public getStartupState()Ljava/lang/String;
    .locals 1

    const-string v0, "CLIENT"

    return-object v0
.end method
