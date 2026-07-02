.class public Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$SimpleOnScaleGestureListenerKRF;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorKRF.java"

# interfaces
.implements Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF$OnScaleGestureListenerKRF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListenerKRF"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Lcom/amazon/krf/internal/input/ScaleGestureDetectorKRF;)V
    .locals 0

    return-void
.end method
