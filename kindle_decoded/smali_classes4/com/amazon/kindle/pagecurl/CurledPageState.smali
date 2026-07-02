.class Lcom/amazon/kindle/pagecurl/CurledPageState;
.super Ljava/lang/Object;
.source "CurledPageState.java"


# instance fields
.field curlStartTime:J

.field mAnimationDuration:F

.field mAnimationSource:Landroid/graphics/PointF;

.field mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

.field mAnimationStartTime:J

.field mAnimationTarget:Landroid/graphics/PointF;

.field mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

.field mDragStartPos:Landroid/graphics/PointF;

.field mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

.field page:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/pagecurl/IMesh;",
            ">;"
        }
    .end annotation
.end field

.field pointerID:I

.field selfAnimated:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    .line 13
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    invoke-direct {v0}, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    .line 15
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_NONE:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSource:Landroid/graphics/PointF;

    .line 18
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_NONE:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    .line 19
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->pointerID:I

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->curlStartTime:J

    .line 26
    iput-wide v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationStartTime:J

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iget-object v0, v0, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    iput v1, v0, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPressure:F

    .line 34
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlStartPosition;->CURL_START_NONE:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSource:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 37
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurlTargetPosition;->CURL_TO_NONE:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTarget:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->pointerID:I

    const-wide/16 v2, 0x0

    .line 44
    iput-wide v2, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->curlStartTime:J

    .line 45
    iput-wide v2, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationStartTime:J

    .line 46
    iput v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDragStartPos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mDragStartPos:Landroid/graphics/PointF;

    .line 51
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPointerPos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    .line 52
    invoke-static {v1}, Lcom/amazon/kindle/pagecurl/utils/Utils;->toString(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimationSourceID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationSourceID:Lcom/amazon/kindle/pagecurl/CurlStartPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimationTargetID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationTargetID:Lcom/amazon/kindle/pagecurl/CurlTargetPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selfAnimated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->selfAnimated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pointerID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->pointerID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curlStartTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->curlStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimationStartTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimationDuration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->mAnimationDuration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", number of page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/pagecurl/CurledPageState;->page:Ljava/util/Vector;

    .line 60
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
