.class public final Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;
.super Ljava/lang/Object;
.source "BlurbCardController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 412
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbBottomSheetThemeManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 2

    .line 457
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getIsEndActionsBottomSheetOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeFromAppTheme()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    const-string v1, "ThemedResourceUtil.getColorModeFromAppTheme()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getColorModeForFPE()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    const-string v1, "ThemedResourceUtil.getColorModeForFPE()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final getThemedColor(I)I
    .locals 1

    .line 449
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getIsEndActionsBottomSheetOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorForFPE(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final setBlurbCardStyles(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;Landroid/content/res/Resources;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    .line 415
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getIsEndActionsBottomSheetOpened()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 416
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getReadNowButton()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_0

    sget v1, Lcom/amazon/kindle/ea/R$style;->readingactions_amazon_text_button_regular:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getReadNowButton()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 418
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getLearnMoreButton()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_2

    sget v1, Lcom/amazon/kindle/ea/R$style;->readingactions_amazon_text_button_regular:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 419
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getLearnMoreButton()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 420
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getLearnMoreButton()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 421
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_learn_more_button_background_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    .line 420
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 423
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbCardContentLayout()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p2, :cond_5

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_blurb_card_content_layout_background:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbCoverImagePointer()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 425
    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_blurb_cover_image_pointer:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 424
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 427
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getReadNowButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_7

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->aa_text_size_caption:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 428
    :cond_7
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getLearnMoreButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_8

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->aa_text_size_caption:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {v0, v2, p2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 429
    :cond_8
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getLearnMoreButton()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 430
    sget v0, Lcom/amazon/kindle/ea/R$array;->endactions_learn_more_button_background_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorForFPE(I)I

    move-result v0

    .line 429
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 432
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbCardContentLayout()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p2, :cond_a

    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_blurb_card_content_layout_background_fullpage:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawableForFPE(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 433
    :cond_a
    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;->getBlurbCoverImagePointer()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 434
    sget p2, Lcom/amazon/kindle/ea/R$array;->readingactions_blurb_cover_image_pointer_fullpage:I

    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawableForFPE(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 433
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final setTitleStyle(Landroid/widget/TextView;)V
    .locals 2

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string v1, "EndActionsPlugin.sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    .line 440
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getIsEndActionsBottomSheetOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    sget v1, Lcom/amazon/kindle/ea/R$style;->readingactions_amazon_text_title_large:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 442
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 444
    :cond_0
    sget v1, Lcom/amazon/kindle/ea/R$style;->anyactions_amazon_text_large:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
