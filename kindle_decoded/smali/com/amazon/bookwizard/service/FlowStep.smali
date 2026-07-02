.class public Lcom/amazon/bookwizard/service/FlowStep;
.super Ljava/lang/Object;
.source "FlowStep.java"


# instance fields
.field private action:Ljava/lang/String;

.field private assetKey:Ljava/lang/String;

.field private backStep:Ljava/lang/String;

.field private end:Z

.field private falseStep:Ljava/lang/String;

.field private flavor:Ljava/lang/String;

.field private nextStep:Ljava/lang/String;

.field private start:Z

.field private trueStep:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/amazon/bookwizard/service/FlowStep;->action:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/amazon/bookwizard/service/FlowStep;->type:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/amazon/bookwizard/service/FlowStep;->trueStep:Ljava/lang/String;

    .line 151
    iput-object p6, p0, Lcom/amazon/bookwizard/service/FlowStep;->falseStep:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/amazon/bookwizard/service/FlowStep;->nextStep:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/amazon/bookwizard/service/FlowStep;->backStep:Ljava/lang/String;

    .line 154
    iput-object p7, p0, Lcom/amazon/bookwizard/service/FlowStep;->flavor:Ljava/lang/String;

    return-void
.end method

.method public static decision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/bookwizard/service/FlowStep;->decision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object p0

    return-object p0
.end method

.method public static decision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;
    .locals 9

    .line 168
    new-instance v8, Lcom/amazon/bookwizard/service/FlowStep;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v7, p3

    const-string v2, "DECISION"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/bookwizard/service/FlowStep;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/bookwizard/service/FlowStep;
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/bookwizard/service/FlowStep;->view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object p0

    return-object p0
.end method

.method public static view(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/service/StepFlavor;)Lcom/amazon/bookwizard/service/FlowStep;
    .locals 9

    .line 174
    new-instance v8, Lcom/amazon/bookwizard/service/FlowStep;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v7, p3

    const-string v2, "VIEW"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/bookwizard/service/FlowStep;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public end()Lcom/amazon/bookwizard/service/FlowStep;
    .locals 1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->end:Z

    return-object p0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetKey()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->assetKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBackStepId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->backStep:Ljava/lang/String;

    return-object v0
.end method

.method public getFalseStep()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->falseStep:Ljava/lang/String;

    return-object v0
.end method

.method public getFlavor()Lcom/amazon/bookwizard/service/StepFlavor;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->flavor:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/bookwizard/service/StepFlavor;->from(Ljava/lang/String;)Lcom/amazon/bookwizard/service/StepFlavor;

    move-result-object v0

    return-object v0
.end method

.method public getNextStepId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->nextStep:Ljava/lang/String;

    return-object v0
.end method

.method public getTrueStep()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->trueStep:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/bookwizard/service/StepType;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/bookwizard/service/StepType;->from(Ljava/lang/String;)Lcom/amazon/bookwizard/service/StepType;

    move-result-object v0

    return-object v0
.end method

.method public isEnd()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->end:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->start:Z

    return v0
.end method

.method public start()Lcom/amazon/bookwizard/service/FlowStep;
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/amazon/bookwizard/service/FlowStep;->start:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->action:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 129
    iget-object v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->type:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 130
    iget-object v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->assetKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "assetKey"

    .line 131
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 133
    :cond_0
    sget-object v1, Lcom/amazon/bookwizard/service/StepType;->VIEW:Lcom/amazon/bookwizard/service/StepType;

    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/FlowStep;->getType()Lcom/amazon/bookwizard/service/StepType;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 134
    iget-object v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->flavor:Ljava/lang/String;

    const-string v2, "flavor"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 135
    iget-object v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->nextStep:Ljava/lang/String;

    const-string/jumbo v2, "nextStep"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 136
    iget-object v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->backStep:Ljava/lang/String;

    const-string v2, "backStep"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    goto :goto_0

    .line 137
    :cond_1
    sget-object v1, Lcom/amazon/bookwizard/service/StepType;->DECISION:Lcom/amazon/bookwizard/service/StepType;

    invoke-virtual {p0}, Lcom/amazon/bookwizard/service/FlowStep;->getType()Lcom/amazon/bookwizard/service/StepType;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 138
    iget-object v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->trueStep:Ljava/lang/String;

    const-string/jumbo v2, "trueStep"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 139
    iget-object v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->falseStep:Ljava/lang/String;

    const-string v2, "falseStep"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 141
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->start:Z

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 142
    iget-boolean v1, p0, Lcom/amazon/bookwizard/service/FlowStep;->end:Z

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 143
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
