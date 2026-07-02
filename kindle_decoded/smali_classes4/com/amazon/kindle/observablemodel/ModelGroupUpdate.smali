.class public Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;
.super Lcom/amazon/kindle/observablemodel/ModelCountUpdate;
.source "ModelGroupUpdate.java"


# instance fields
.field private mRepresentativeID:Lcom/amazon/kindle/observablemodel/ItemID;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/observablemodel/ContainerID;Lcom/amazon/kindle/observablemodel/ItemID;J)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;-><init>(Lcom/amazon/kindle/observablemodel/ContainerID;J)V

    .line 8
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;->mRepresentativeID:Lcom/amazon/kindle/observablemodel/ItemID;

    return-void
.end method


# virtual methods
.method public getRepresentativeID()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;->mRepresentativeID:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method
