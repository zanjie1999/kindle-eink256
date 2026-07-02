.class public final Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;
.super Ljava/lang/Object;
.source "OverridableWeblab.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/mobileweblab/IWeblab;


# instance fields
.field private final transient baseWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

.field private expirationDate:Ljava/util/Date;

.field private overrideValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblab;)V
    .locals 1

    const-string v0, "baseWeblab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->baseWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    return-void
.end method

.method private final getHasOverride()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->overrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->baseWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baseWeblab.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOverrideValue()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->overrideValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTreatmentAndRecordTrigger()Ljava/lang/String;
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->getHasOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->baseWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baseWeblab.treatmentAndRecordTrigger"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getTreatmentAssignment()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->overrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->baseWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baseWeblab.treatmentAssignment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public recordTrigger()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->getHasOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->baseWeblab:Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->recordTrigger()V

    return-void
.end method

.method public final removeOverride()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->setOverrideValue(Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->expirationDate:Ljava/util/Date;

    return-void
.end method

.method public final setExpirationDate(Ljava/util/Date;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->expirationDate:Ljava/util/Date;

    return-void
.end method

.method public final setOverrideValue(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->overrideValue:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 23
    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->expirationDate:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", overrideValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->overrideValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expirationDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->expirationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
