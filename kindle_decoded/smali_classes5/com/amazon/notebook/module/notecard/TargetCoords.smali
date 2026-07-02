.class public Lcom/amazon/notebook/module/notecard/TargetCoords;
.super Ljava/lang/Object;
.source "TargetCoords.java"


# instance fields
.field public final end:Lcom/amazon/kindle/krx/reader/IPosition;

.field public final start:Lcom/amazon/kindle/krx/reader/IPosition;

.field public final targetSize:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/graphics/Rect;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/notebook/module/notecard/TargetCoords;->start:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 24
    iput-object p2, p0, Lcom/amazon/notebook/module/notecard/TargetCoords;->end:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 25
    iput-object p3, p0, Lcom/amazon/notebook/module/notecard/TargetCoords;->targetSize:Landroid/graphics/Rect;

    return-void
.end method
