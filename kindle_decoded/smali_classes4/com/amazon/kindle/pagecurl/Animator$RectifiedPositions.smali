.class public Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectifiedPositions"
.end annotation


# instance fields
.field rectifiedPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

.field rectifiedStartDrag:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedStartDrag:Landroid/graphics/PointF;

    .line 50
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    invoke-direct {v0}, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/Animator$RectifiedPositions;->rectifiedPointerPos:Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;

    return-void
.end method
