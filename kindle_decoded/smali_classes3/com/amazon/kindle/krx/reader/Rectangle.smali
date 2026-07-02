.class public final Lcom/amazon/kindle/krx/reader/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public final height:I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/amazon/kindle/krx/reader/Rectangle;->x:I

    .line 42
    iput p2, p0, Lcom/amazon/kindle/krx/reader/Rectangle;->y:I

    .line 43
    iput p3, p0, Lcom/amazon/kindle/krx/reader/Rectangle;->width:I

    .line 44
    iput p4, p0, Lcom/amazon/kindle/krx/reader/Rectangle;->height:I

    return-void
.end method
