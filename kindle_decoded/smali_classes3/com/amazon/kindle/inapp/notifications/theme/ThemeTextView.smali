.class public final Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;
.super Landroid/widget/TextView;
.source "ThemeTextView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeTextView.kt\ncom/amazon/kindle/inapp/notifications/theme/ThemeTextView\n*L\n1#1,28:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/R$styleable;->ThemeTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 21
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$styleable;->ThemeTextView_theme_text_view_font:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 22
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->Companion:Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/theme/FontManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->getFontByName(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    :goto_1
    return-void
.end method
