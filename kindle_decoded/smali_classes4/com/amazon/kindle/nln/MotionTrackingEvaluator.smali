.class public Lcom/amazon/kindle/nln/MotionTrackingEvaluator;
.super Landroid/animation/FloatEvaluator;
.source "MotionTrackingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;
    }
.end annotation


# instance fields
.field private animationParent:Landroid/view/View;

.field private axis:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

.field private offset:I

.field private position:[I

.field private targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->offset:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 22
    iput-object v0, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->position:[I

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->animationParent:Landroid/view/View;

    .line 52
    iput-object p2, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->targetView:Landroid/view/View;

    .line 53
    iput-object p3, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->axis:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    .line 54
    iput p4, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->offset:I

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 2

    .line 60
    iget-object p3, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->targetView:Landroid/view/View;

    iget-object v0, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->animationParent:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->position:[I

    invoke-static {p3, v0, v1}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    .line 61
    iget-object p3, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->position:[I

    iget-object v0, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->axis:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    iget v0, p0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->offset:I

    add-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
