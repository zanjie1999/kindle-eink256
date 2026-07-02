.class public abstract Lcom/amazon/android/docviewer/pdf/PanningAnimation;
.super Landroid/view/animation/Animation;
.source "PanningAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.01f

.field private static final INVALID_TIME:J = -0x1L

.field private static final MAX_RESPONSE_TIME_IN_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;

.field static final m_debug:Z = false


# instance fields
.field private currentX:F

.field private currentY:F

.field private lastScrollingPanUpdate:J

.field private lastTimeScrollingPanCalled:J

.field private panningMode:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

.field private scrollingPanStopped:Z

.field private scrollingPanVelocityX:F

.field private scrollingPanVelocityY:F

.field private targetX:F

.field private targetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->targetX:F

    .line 36
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->targetY:F

    .line 37
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentX:F

    .line 38
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentY:F

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->lastTimeScrollingPanCalled:J

    .line 44
    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->lastScrollingPanUpdate:J

    .line 46
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->TARGET:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->panningMode:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    return-void
.end method


# virtual methods
.method protected abstract applyPanningTransformationToView(FF)V
.end method

.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .line 129
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->panningMode:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    sget-object v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->TARGET:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    if-ne p2, v0, :cond_0

    .line 130
    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->targetX:F

    mul-float p2, p2, p1

    .line 131
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->targetY:F

    mul-float v0, v0, p1

    goto :goto_0

    .line 132
    :cond_0
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->SCROLLING:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    if-ne p2, p1, :cond_1

    .line 133
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    .line 134
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->lastScrollingPanUpdate:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 136
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentX:F

    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->scrollingPanVelocityX:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 137
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentY:F

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->scrollingPanVelocityY:F

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    .line 139
    iput-wide p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->lastScrollingPanUpdate:J

    move p2, v1

    goto :goto_0

    .line 141
    :cond_1
    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentX:F

    .line 142
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentY:F

    .line 145
    :goto_0
    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentX:F

    sub-float/2addr p2, p1

    .line 146
    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentY:F

    sub-float/2addr v0, p1

    .line 148
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 149
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    .line 160
    :cond_4
    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentX:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentX:F

    .line 161
    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentY:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentY:F

    .line 162
    invoke-virtual {p0, p2, v0}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->applyPanningTransformationToView(FF)V

    :cond_5
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 0

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 108
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->isAnimationInProgress()Z

    move-result p1

    return p1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 101
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->isAnimationInProgress()Z

    move-result p1

    return p1
.end method

.method public isAnimationInProgress()Z
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->panningMode:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    sget-object v1, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->TARGET:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 113
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->targetX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v4, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->targetY:F

    .line 114
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 115
    :cond_2
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->SCROLLING:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    if-ne v0, v1, :cond_4

    .line 116
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 117
    iget-boolean v4, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->scrollingPanStopped:Z

    if-nez v4, :cond_3

    iget-wide v4, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->lastTimeScrollingPanCalled:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-ltz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_4
    return v3
.end method

.method public setPanningTarget(FF)V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->targetX:F

    .line 60
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->targetY:F

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentX:F

    .line 63
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->currentY:F

    .line 65
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->TARGET:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->panningMode:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    return-void
.end method

.method public startScrollingPan(FF)V
    .locals 2

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->scrollingPanStopped:Z

    .line 76
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->lastTimeScrollingPanCalled:J

    .line 77
    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->lastScrollingPanUpdate:J

    .line 78
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->scrollingPanVelocityX:F

    .line 79
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->scrollingPanVelocityY:F

    .line 80
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->SCROLLING:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->panningMode:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    return-void
.end method

.method public stopScrollingPan()V
    .locals 1

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->scrollingPanStopped:Z

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
