.class public Lcom/amazon/kindle/observablemodel/ModelSortingPair;
.super Ljava/lang/Object;
.source "ModelSortingPair.java"


# instance fields
.field private final direction:Ljava/lang/Integer;

.field private final order:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;->order:Ljava/lang/Integer;

    .line 10
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;->direction:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getDirection()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;->direction:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrder()Ljava/lang/Integer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;->order:Ljava/lang/Integer;

    return-object v0
.end method
