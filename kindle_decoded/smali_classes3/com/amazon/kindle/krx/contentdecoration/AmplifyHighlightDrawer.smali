.class public Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDrawer;
.super Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;
.source "AmplifyHighlightDrawer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;-><init>()V

    return-void
.end method

.method private getHighlightColor(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p1, v0

    const/high16 v0, -0x41000000    # -0.5f

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public drawHighlight(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1

    .line 21
    invoke-direct {p0, p3}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDrawer;->getHighlightColor(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->drawHighlight(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method protected setXfermode()V
    .locals 2

    .line 11
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;->multiplyXfermode:Landroid/graphics/Xfermode;

    return-void
.end method
