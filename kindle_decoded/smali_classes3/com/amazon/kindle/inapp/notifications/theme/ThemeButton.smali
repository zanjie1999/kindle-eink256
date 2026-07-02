.class public final Lcom/amazon/kindle/inapp/notifications/theme/ThemeButton;
.super Landroid/widget/Button;
.source "ThemeButton.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeButton.kt\ncom/amazon/kindle/inapp/notifications/theme/ThemeButton\n*L\n1#1,26:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/R$styleable;->ThemeButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 19
    sget v0, Lcom/amazon/kindle/inapp/notifications/R$styleable;->ThemeButton_textFont:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 20
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->Companion:Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;->getInstance()Lcom/amazon/kindle/inapp/notifications/theme/FontManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->getFontByName(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 23
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1
    return-void
.end method
