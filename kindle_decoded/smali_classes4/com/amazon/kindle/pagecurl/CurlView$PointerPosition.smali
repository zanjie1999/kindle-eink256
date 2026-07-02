.class public Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;
.super Ljava/lang/Object;
.source "CurlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/CurlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerPosition"
.end annotation


# instance fields
.field public mPos:Landroid/graphics/PointF;

.field public mPressure:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;->mPos:Landroid/graphics/PointF;

    return-void
.end method
