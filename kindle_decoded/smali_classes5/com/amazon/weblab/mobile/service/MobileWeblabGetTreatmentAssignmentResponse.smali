.class public Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;
.super Ljava/lang/Object;
.source "MobileWeblabGetTreatmentAssignmentResponse.java"


# instance fields
.field private mTreatmentAssignments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;->mTreatmentAssignments:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getTreatmentAssignments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;->mTreatmentAssignments:Ljava/util/Map;

    return-object v0
.end method
