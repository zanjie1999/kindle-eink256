.class public Lcom/amazon/bookwizard/service/Flow;
.super Ljava/lang/Object;
.source "Flow.java"


# instance fields
.field private id:Ljava/lang/String;

.field private steps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/service/FlowStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/service/FlowStep;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/bookwizard/service/Flow;->id:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    return-void
.end method

.method private getFirstStepId()Ljava/lang/String;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 109
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/bookwizard/service/FlowStep;

    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/FlowStep;->isStart()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/bookwizard/service/Flow;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStep(Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "_first_step"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    invoke-direct {p0}, Lcom/amazon/bookwizard/service/Flow;->getFirstStepId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/service/FlowStep;

    return-object p1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/service/FlowStep;

    return-object p1
.end method

.method public getStep(Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    sget-object p2, Lcom/amazon/bookwizard/service/StepFlavor;->DEFAULT:Lcom/amazon/bookwizard/service/StepFlavor;

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/bookwizard/service/FlowStep;

    .line 91
    invoke-virtual {v2}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/amazon/bookwizard/service/FlowStep;->getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v3

    if-ne p2, v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method getSteps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/bookwizard/service/FlowStep;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/service/Flow;->id:Ljava/lang/String;

    const-string v2, "id"

    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/service/Flow;->steps:Ljava/util/Map;

    const-string/jumbo v2, "steps"

    .line 124
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 125
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
