.class public final Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;
.super Ljava/lang/Object;
.source "DropShadowHelper.java"


# static fields
.field private static bottomGradient:Landroid/graphics/drawable/GradientDrawable;

.field private static cornerGradient:Landroid/graphics/drawable/GradientDrawable;

.field private static leftGradient:Landroid/graphics/drawable/GradientDrawable;

.field private static rightGradient:Landroid/graphics/drawable/GradientDrawable;

.field private static topGradient:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kedu/flashcards/R$color;->fc_drop_shadow_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kedu/flashcards/R$color;->fc_drop_shadow_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 35
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->topGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 36
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->bottomGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 37
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->leftGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 38
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->rightGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 40
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->cornerGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 41
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    return-void
.end method

.method public static draw(IIIILandroid/graphics/Canvas;I)V
    .locals 6

    .line 46
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->leftGradient:Landroid/graphics/drawable/GradientDrawable;

    sub-int v1, p2, p5

    add-int/2addr p1, p3

    invoke-virtual {v0, v1, p3, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 47
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->topGradient:Landroid/graphics/drawable/GradientDrawable;

    sub-int v2, p3, p5

    add-int/2addr p0, p2

    invoke-virtual {v0, p2, v2, p0, p3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 48
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->rightGradient:Landroid/graphics/drawable/GradientDrawable;

    add-int v3, p0, p5

    invoke-virtual {v0, p0, p3, v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 49
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->bottomGradient:Landroid/graphics/drawable/GradientDrawable;

    add-int v4, p1, p5

    invoke-virtual {v0, p2, p1, p0, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, v2, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p0, p1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 54
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, p1, p2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->leftGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->topGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 58
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->rightGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->bottomGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->cornerGradient:Landroid/graphics/drawable/GradientDrawable;

    int-to-float p2, p5

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 63
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->cornerGradient:Landroid/graphics/drawable/GradientDrawable;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p4, v5, p2, p2}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->drawCornerGradient(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V

    .line 64
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->cornerGradient:Landroid/graphics/drawable/GradientDrawable;

    const/4 p5, 0x0

    invoke-static {p1, p4, v0, p5, p2}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->drawCornerGradient(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V

    .line 65
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->cornerGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1, p4, p3, p5, p5}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->drawCornerGradient(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V

    .line 66
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->cornerGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1, p4, p0, p2, p5}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->drawCornerGradient(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V

    return-void
.end method

.method public static draw(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 6

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    .line 84
    invoke-static/range {v0 .. v5}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->draw(IIIILandroid/graphics/Canvas;I)V

    return-void
.end method

.method public static draw(Landroid/widget/ImageView;IILandroid/graphics/Canvas;I)V
    .locals 7

    .line 71
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 76
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    .line 77
    invoke-static/range {v1 .. v6}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->draw(IIIILandroid/graphics/Canvas;I)V

    return-void
.end method

.method private static drawCornerGradient(Landroid/graphics/drawable/GradientDrawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V
    .locals 0

    .line 89
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {p0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 92
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
