.class Lcom/amazon/weblab/mobile/repository/StorageEntity;
.super Ljava/lang/Object;
.source "StorageEntity.java"


# instance fields
.field private mApplicationVersion:Ljava/lang/String;

.field private mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

.field private mTreatments:Ljava/util/Map;
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
.method constructor <init>(Ljava/lang/String;Lcom/amazon/weblab/mobile/model/SessionInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 22
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iput-object p1, p0, Lcom/amazon/weblab/mobile/repository/StorageEntity;->mApplicationVersion:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/amazon/weblab/mobile/repository/StorageEntity;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    .line 26
    iput-object p3, p0, Lcom/amazon/weblab/mobile/repository/StorageEntity;->mTreatments:Ljava/util/Map;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "treatments can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "info can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appVersion can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/StorageEntity;->mApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method getSessionInfo()Lcom/amazon/weblab/mobile/model/SessionInfo;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/StorageEntity;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    return-object v0
.end method

.method getTreatments()Ljava/util/Map;
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

    .line 38
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/StorageEntity;->mTreatments:Ljava/util/Map;

    return-object v0
.end method
