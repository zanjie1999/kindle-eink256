.class public Lcom/amazon/kindle/observablemodel/ModelCountUpdate;
.super Ljava/lang/Object;
.source "ModelCountUpdate.java"


# instance fields
.field mContainerID:Lcom/amazon/kindle/observablemodel/ContainerID;

.field mCount:J


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/ContainerID;J)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->mContainerID:Lcom/amazon/kindle/observablemodel/ContainerID;

    .line 9
    iput-wide p2, p0, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->mCount:J

    return-void
.end method


# virtual methods
.method public getContainerID()Lcom/amazon/kindle/observablemodel/ContainerID;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->mContainerID:Lcom/amazon/kindle/observablemodel/ContainerID;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->mCount:J

    return-wide v0
.end method
