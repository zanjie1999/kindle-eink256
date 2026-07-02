.class Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;
.super Ljava/lang/Object;
.source "GalleryLayoutItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/widget/GalleryLayoutItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/widget/GalleryLayoutItem;FFF)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput p2, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->x:F

    .line 185
    iput p3, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->y:F

    .line 186
    iput p4, p0, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->z:F

    return-void
.end method
