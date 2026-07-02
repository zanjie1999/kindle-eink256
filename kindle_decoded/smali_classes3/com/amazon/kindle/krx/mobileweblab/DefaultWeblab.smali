.class public Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;
.super Ljava/lang/Object;
.source "DefaultWeblab.java"

# interfaces
.implements Lcom/amazon/kindle/krx/mobileweblab/IWeblab;


# instance fields
.field private final defaultTreatment:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;->defaultTreatment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTreatmentAndRecordTrigger()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;->defaultTreatment:Ljava/lang/String;

    return-object v0
.end method

.method public getTreatmentAssignment()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/DefaultWeblab;->defaultTreatment:Ljava/lang/String;

    return-object v0
.end method

.method public recordTrigger()V
    .locals 0

    return-void
.end method
