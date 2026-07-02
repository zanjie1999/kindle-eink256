.class public Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/widget/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Box"
.end annotation


# instance fields
.field public final back:F

.field public final front:F

.field public final left:F

.field public final right:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;->left:F

    .line 28
    iput p3, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;->right:F

    .line 30
    iput p5, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;->front:F

    .line 31
    iput p6, p0, Lcom/amazon/kcp/widget/CarouselLayoutManager$Box;->back:F

    return-void
.end method
