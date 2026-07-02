.class final Lcom/amazon/weblab/mobile/service/ServiceAssignment;
.super Ljava/lang/Object;
.source "ServiceAssignment.java"


# instance fields
.field private mAllocationVersion:Ljava/lang/String;

.field private mMayTrigger:Z

.field private mTreatment:Ljava/lang/String;

.field private mWeblabName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->mWeblabName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->mTreatment:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->mAllocationVersion:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->mMayTrigger:Z

    return-void
.end method


# virtual methods
.method getMayTrigger()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->mMayTrigger:Z

    return v0
.end method

.method getTreatment()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->mTreatment:Ljava/lang/String;

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->mAllocationVersion:Ljava/lang/String;

    return-object v0
.end method
