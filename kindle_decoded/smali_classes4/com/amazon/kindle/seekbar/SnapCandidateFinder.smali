.class public Lcom/amazon/kindle/seekbar/SnapCandidateFinder;
.super Ljava/lang/Object;
.source "SnapCandidateFinder.java"


# instance fields
.field private bestDist:F

.field private bestPos:I

.field private finished:Z

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/seekbar/ISnappingCandidateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final thresh:F

.field private final touchX:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->bestPos:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 11
    iput v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->bestDist:F

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->finished:Z

    .line 18
    iput p1, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->touchX:F

    .line 19
    iput p2, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->thresh:F

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->providers:Ljava/util/List;

    return-void
.end method

.method private checkIfFinished()V
    .locals 2

    .line 24
    iget-boolean v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->finished:Z

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already notified best candidate provider"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSnappingCandidateProvider(Lcom/amazon/kindle/krx/ui/seekbar/ISnappingCandidateProvider;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->checkIfFinished()V

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/seekbar/ISnappingCandidateProvider;->getCandidates()Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p2, v1}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result v1

    .line 35
    iget v2, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->touchX:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 36
    iget v2, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->bestDist:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->thresh:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 37
    iput v1, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->bestDist:F

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->bestPos:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBestPosition()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->bestPos:I

    return v0
.end method

.method public notifyCandidates()V
    .locals 3

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->checkIfFinished()V

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/seekbar/ISnappingCandidateProvider;

    .line 50
    iget v2, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->bestPos:I

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/seekbar/ISnappingCandidateProvider;->onSnapStart(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->finished:Z

    return-void
.end method
