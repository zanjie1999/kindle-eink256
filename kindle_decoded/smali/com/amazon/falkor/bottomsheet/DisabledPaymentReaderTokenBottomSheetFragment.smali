.class public final Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;
.super Lcom/amazon/falkor/BaseRefreshableFragment;
.source "DisabledPaymentReaderTokenBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisabledPaymentReaderTokenBottomSheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisabledPaymentReaderTokenBottomSheetFragment.kt\ncom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment\n*L\n1#1,105:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;-><init>()V

    .line 29
    const-class v0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisabledPaymentReaderTok\u2026:class.java.canonicalName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$markForRefreshOnResume(Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->markForRefreshOnResume()V

    return-void
.end method

.method private final setUpFonts(Landroid/view/View;)V
    .locals 5

    .line 86
    sget v0, Lcom/amazon/falkor/R$id;->bottom_sheet_token_reader_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "requireContext()"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getBookerlyDisplayTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    :cond_0
    sget v0, Lcom/amazon/falkor/R$id;->bottom_sheet_token_reader_token_balance_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    :cond_1
    sget v0, Lcom/amazon/falkor/R$id;->bottom_sheet_token_reader_price_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    :cond_2
    sget v0, Lcom/amazon/falkor/R$id;->token_warning_box_text_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    sget-object v3, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 90
    :cond_3
    sget v0, Lcom/amazon/falkor/R$id;->token_warning_box_text_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    :cond_4
    sget v0, Lcom/amazon/falkor/R$id;->token_warning_box_learn_more_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_5
    return-void
.end method

.method private final setUpLearnMore(Landroid/view/View;)V
    .locals 1

    .line 95
    sget v0, Lcom/amazon/falkor/R$id;->token_warning_box_learn_more_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$setUpLearnMore$1;

    invoke-direct {v0, p0}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment$setUpLearnMore$1;-><init>(Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getRefreshEvent()Lcom/amazon/falkor/event/DisabledPaymentReaderTokenBottomSheetRefreshEvent;
    .locals 1

    .line 46
    new-instance v0, Lcom/amazon/falkor/event/DisabledPaymentReaderTokenBottomSheetRefreshEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/DisabledPaymentReaderTokenBottomSheetRefreshEvent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;->getRefreshEvent()Lcom/amazon/falkor/event/DisabledPaymentReaderTokenBottomSheetRefreshEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v2}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v2

    .line 50
    iget-object v3, v0, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;->TAG:Ljava/lang/String;

    const-string v4, "ShownTokensUnpurchasableBTS"

    .line 49
    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v2, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    sget-object v3, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v3}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "sdk.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    sget-object v5, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v5}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->isReaderInDarkMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo v4, "token_balance"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 56
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "episode_price"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 57
    :goto_1
    sget v5, Lcom/amazon/falkor/R$layout;->bottom_sheet_token_reader:I

    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v5, "view"

    .line 58
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;->setUpFonts(Landroid/view/View;)V

    .line 59
    invoke-direct {v0, v1}, Lcom/amazon/falkor/bottomsheet/DisabledPaymentReaderTokenBottomSheetFragment;->setUpLearnMore(Landroid/view/View;)V

    const-string/jumbo v5, "tokenDrawable"

    const-string/jumbo v6, "placeholder"

    const-string/jumbo v7, "string"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    .line 62
    sget v10, Lcom/amazon/falkor/R$id;->bottom_sheet_token_reader_token_balance_text:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/amazon/falkor/R$string;->bottom_sheet_token_reader_token_balance_text:I

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v2, v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v11, Lcom/amazon/falkor/R$string;->token_icon_placeholder_string:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/amazon/falkor/R$drawable;->ic_token_small:I

    invoke-virtual {v11, v12, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 66
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v11, v9, v9, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    sget-object v14, Lcom/amazon/falkor/utils/SpanUtils;->INSTANCE:Lcom/amazon/falkor/utils/SpanUtils;

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v11

    invoke-static/range {v14 .. v20}, Lcom/amazon/falkor/utils/SpanUtils;->createBuilderWithDrawablePlaceholder$default(Lcom/amazon/falkor/utils/SpanUtils;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 73
    sget v2, Lcom/amazon/falkor/R$id;->bottom_sheet_token_reader_price_info:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/amazon/falkor/R$string;->bottom_sheet_token_reader_price_info_text:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v10, v11, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/amazon/falkor/R$string;->token_icon_placeholder_string:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v8, Lcom/amazon/falkor/R$drawable;->ic_token_small:I

    invoke-virtual {v4, v8, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 77
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v15, v9, v9, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    sget-object v12, Lcom/amazon/falkor/utils/SpanUtils;->INSTANCE:Lcom/amazon/falkor/utils/SpanUtils;

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/amazon/falkor/utils/SpanUtils;->createBuilderWithDrawablePlaceholder$default(Lcom/amazon/falkor/utils/SpanUtils;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object v1
.end method
