.class public final Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;
.super Ljava/lang/Object;
.source "CustomTypefaceSpan.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/utils/CustomTypefaceSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$applyCustomTypeFace(Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method private final applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 28
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/high16 v0, -0x41800000    # -0.25f

    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 33
    :cond_2
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
