.class public Lcom/amazon/kindle/weblab/OnOffWeblab;
.super Ljava/lang/Object;
.source "OnOffWeblab.kt"

# interfaces
.implements Lcom/amazon/kindle/weblab/LaunchWeblab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/weblab/OnOffWeblab$Companion;
    }
.end annotation


# instance fields
.field private final weblabId:Ljava/lang/String;

.field private final weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/weblab/OnOffWeblab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "weblabId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/weblab/OnOffWeblab;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    iput-object p2, p0, Lcom/amazon/kindle/weblab/OnOffWeblab;->weblabId:Ljava/lang/String;

    return-void
.end method

.method private final getTreatment()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/weblab/OnOffWeblab;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/weblab/OnOffWeblab;->weblabId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public isOn()Z
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->getTreatment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "C"

    .line 42
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public recordTrigger()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/weblab/OnOffWeblab;->weblabManager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/weblab/OnOffWeblab;->weblabId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->recordTrigger()V

    :cond_0
    return-void
.end method

.method public recordTriggerAndCheckIsOn()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->recordTrigger()V

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    return v0
.end method
