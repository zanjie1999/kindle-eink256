.class public Lcom/amazon/bookwizard/debug/VanillaLaunchInfo;
.super Lcom/amazon/bookwizard/service/LaunchInfo;
.source "VanillaLaunchInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 28
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/LaunchInfo;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "genreSelectionStep"

    const-string/jumbo v3, "welcomeView"

    .line 30
    invoke-static {v3, v2, v1}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/FlowStep;->start()Lcom/amazon/bookwizard/service/FlowStep;

    const-string/jumbo v4, "welcomeStep"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "ratingsViewStep"

    const-string v4, "genreSelectionView"

    .line 31
    invoke-static {v4, v3, v1}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "recommendationsViewStep"

    const-string/jumbo v5, "ratingsView"

    .line 32
    invoke-static {v5, v4, v2}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "recommendationsView"

    .line 33
    invoke-static {v2, v1, v3}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/FlowStep;->end()Lcom/amazon/bookwizard/service/FlowStep;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Lcom/amazon/bookwizard/service/Flow;

    const-string v2, "Vanilla"

    invoke-direct {v1, v2, v0}, Lcom/amazon/bookwizard/service/Flow;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->flow:Lcom/amazon/bookwizard/service/Flow;

    return-void
.end method


# virtual methods
.method public getStartupState()Ljava/lang/String;
    .locals 1

    const-string v0, "CLIENT"

    return-object v0
.end method
