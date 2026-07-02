.class public final Lcom/amazon/bookwizard/service/LaunchInfoValidator;
.super Ljava/lang/Object;
.source "LaunchInfoValidator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.service.LaunchInfoValidator"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isNotValid(Lcom/amazon/bookwizard/service/LaunchInfo;)Z
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->isValid(Lcom/amazon/bookwizard/service/LaunchInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isValid(Lcom/amazon/bookwizard/service/LaunchInfo;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 48
    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/Flow;->getSteps()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 55
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 56
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 57
    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/Flow;->getSteps()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 59
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/bookwizard/service/FlowStep;

    .line 61
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v6, Lcom/amazon/bookwizard/service/StepType;->VIEW:Lcom/amazon/bookwizard/service/StepType;

    invoke-virtual {v5}, Lcom/amazon/bookwizard/service/FlowStep;->getType()Lcom/amazon/bookwizard/service/StepType;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 63
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_1
    sget-object v6, Lcom/amazon/bookwizard/service/StepType;->DECISION:Lcom/amazon/bookwizard/service/StepType;

    invoke-virtual {v5}, Lcom/amazon/bookwizard/service/FlowStep;->getType()Lcom/amazon/bookwizard/service/StepType;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 65
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/amazon/bookwizard/service/FlowStep;->isStart()Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 71
    invoke-static {v1, v3}, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->validateViewSteps(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 72
    invoke-static {v2, v3}, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->validateDecisionSteps(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 49
    :cond_5
    :goto_2
    sget-object p0, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->TAG:Ljava/lang/String;

    const-string v1, "Info/Flow/Steps are null"

    invoke-static {p0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static validateDecisionSteps(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/bookwizard/service/FlowStep;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 120
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/service/FlowStep;

    .line 122
    sget-object v1, Lcom/amazon/bookwizard/util/K;->decisions:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 123
    sget-object p0, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decision missing: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getTrueStep()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFalseStep()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getTrueStep()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getFalseStep()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    :cond_3
    sget-object p0, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "True or False unknown: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 128
    :cond_4
    :goto_0
    sget-object p0, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "True or False missing: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static validateViewSteps(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/bookwizard/service/FlowStep;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/service/FlowStep;

    .line 87
    sget-object v1, Lcom/amazon/bookwizard/util/K;->views:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 88
    sget-object p0, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View missing: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getBackStepId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getBackStepId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    sget-object p0, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View back step missing: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getNextStepId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getNextStepId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    sget-object p0, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View next step missing: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 102
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->getNextStepId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/FlowStep;->isEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object p0, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No next step but not end: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
