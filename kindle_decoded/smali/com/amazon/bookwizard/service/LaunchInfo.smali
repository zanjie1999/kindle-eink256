.class public Lcom/amazon/bookwizard/service/LaunchInfo;
.super Lcom/amazon/bookwizard/service/EmptyResponse;
.source "LaunchInfo.java"

# interfaces
.implements Lcom/amazon/bookwizard/service/SarsResponse;


# instance fields
.field private context:Ljava/lang/String;

.field private features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected flow:Lcom/amazon/bookwizard/service/Flow;

.field private runningState:Lcom/amazon/bookwizard/service/State;

.field private startupState:Ljava/lang/String;

.field protected textAssets:Lcom/amazon/bookwizard/service/TextAssets;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/bookwizard/service/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlow()Lcom/amazon/bookwizard/service/Flow;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->flow:Lcom/amazon/bookwizard/service/Flow;

    return-object v0
.end method

.method public getRunningState()Lcom/amazon/bookwizard/service/State;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->runningState:Lcom/amazon/bookwizard/service/State;

    return-object v0
.end method

.method public getStartupState()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->startupState:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAssets()Lcom/amazon/bookwizard/service/TextAssets;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->textAssets:Lcom/amazon/bookwizard/service/TextAssets;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->startupState:Ljava/lang/String;

    const-string v2, "STARTUP_STATE"

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->context:Ljava/lang/String;

    const-string v2, "CONTEXT"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->features:Ljava/util/Map;

    const-string v2, "FEATURES"

    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->flow:Lcom/amazon/bookwizard/service/Flow;

    const-string v2, "FLOW"

    .line 114
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/bookwizard/service/LaunchInfo;->textAssets:Lcom/amazon/bookwizard/service/TextAssets;

    const-string v2, "ASSETS"

    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 116
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
