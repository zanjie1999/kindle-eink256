.class public Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;
.super Ljava/lang/Object;
.source "WeblabWrapper.java"

# interfaces
.implements Lcom/amazon/kindle/krx/mobileweblab/IWeblab;


# instance fields
.field private final delegate:Lcom/amazon/kindle/mobileweblab/IWeblabTreatmentDelegate;

.field private final innerWeblab:Lcom/amazon/weblab/mobile/IMobileWeblab;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/IMobileWeblab;Lcom/amazon/kindle/mobileweblab/IWeblabTreatmentDelegate;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->innerWeblab:Lcom/amazon/weblab/mobile/IMobileWeblab;

    .line 17
    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->delegate:Lcom/amazon/kindle/mobileweblab/IWeblabTreatmentDelegate;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->innerWeblab:Lcom/amazon/weblab/mobile/IMobileWeblab;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/IMobileWeblab;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTreatmentAndRecordTrigger()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->innerWeblab:Lcom/amazon/weblab/mobile/IMobileWeblab;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/IMobileWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->recordTrigger()V

    return-object v0
.end method

.method public getTreatmentAssignment()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->innerWeblab:Lcom/amazon/weblab/mobile/IMobileWeblab;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/IMobileWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recordTrigger()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->innerWeblab:Lcom/amazon/weblab/mobile/IMobileWeblab;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/IMobileWeblab;->recordTrigger()Ljava/util/concurrent/Future;

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->delegate:Lcom/amazon/kindle/mobileweblab/IWeblabTreatmentDelegate;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/mobileweblab/WeblabWrapper;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/mobileweblab/IWeblabTreatmentDelegate;->treatmentDidTriggerForWeblab(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
