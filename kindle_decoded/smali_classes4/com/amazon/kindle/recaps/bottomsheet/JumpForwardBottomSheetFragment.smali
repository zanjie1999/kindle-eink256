.class public final Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;
.super Landroidx/fragment/app/Fragment;
.source "JumpForwardBottomSheetFragment.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mCurrentBookPosition:I

.field private final mJumpForwardSheetMaxTitleLength:I

.field private mJumpedForward:Z

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSuggestedPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, 0x55

    .line 39
    iput v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mJumpForwardSheetMaxTitleLength:I

    return-void
.end method

.method public static final synthetic access$getMSuggestedPosition$p(Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mSuggestedPosition:I

    return p0
.end method

.method public static final synthetic access$setMJumpedForward$p(Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mJumpedForward:Z

    return-void
.end method

.method private final createJumpForwardSheetView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5

    .line 57
    sget-object v0, Lcom/amazon/kindle/recaps/util/DarkModeUtil;->INSTANCE:Lcom/amazon/kindle/recaps/util/DarkModeUtil;

    invoke-virtual {v0}, Lcom/amazon/kindle/recaps/util/DarkModeUtil;->isDarkThemed()Z

    move-result v0

    .line 58
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 59
    sget v0, Lcom/amazon/kindle/recaps/R$style;->BottomSheetDarkTheme:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/recaps/R$style;->BottomSheetLightTheme:I

    .line 58
    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 60
    sget v0, Lcom/amazon/kindle/recaps/R$layout;->jump_forward_bottom_sheet_fragment:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "viewGroup"

    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const-string v3, "RECAP_LAST_READ_CHAPTER_TITLE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mJumpForwardSheetMaxTitleLength:I

    invoke-static {v0, v3, v2, v1, v2}, Lcom/amazon/kindle/recaps/util/String_ExtensionsKt;->truncateString$default(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 64
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "RECAP_NEXT_CHAPTER_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v4, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mJumpForwardSheetMaxTitleLength:I

    invoke-static {v3, v4, v2, v1, v2}, Lcom/amazon/kindle/recaps/util/String_ExtensionsKt;->truncateString$default(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 62
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->setJumpForwardToChapterString(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget v0, Lcom/amazon/kindle/recaps/R$id;->recaps_jump_forward_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/widget/Button;

    .line 67
    sget-object v1, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin;->Companion:Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/recaps/KindleRecapsAndroidPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    const-string v3, "KindleRecapsAndroidPlugin.sdk.readerManager"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/ILocalBookData;->getLastPositionRead()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mCurrentBookPosition:I

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "NEXT_POSITION"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mSuggestedPosition:I

    .line 69
    new-instance v1, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$1;-><init>(Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Lcom/amazon/kindle/recaps/R$id;->bottom_sheet_pill:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    sget-object v1, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$2;->INSTANCE:Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment$createJumpForwardSheetView$2;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mRootView:Landroid/widget/FrameLayout;

    const-string v1, "mRootView"

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mRootView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    return-object v2

    .line 66
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final setJumpForwardToChapterString(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    sget v0, Lcom/amazon/kindle/recaps/R$string;->kre_recaps_jump_forward_to_chapter_name_label:I

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "jumpForwardToChapterString"

    .line 95
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    add-int/2addr p2, v3

    move-object v5, p3

    move v6, p2

    .line 99
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    .line 101
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v4

    .line 104
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sub-int/2addr v2, v3

    const/16 v6, 0x21

    invoke-virtual {v5, v0, v2, p2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sub-int/2addr v4, v3

    add-int/2addr p3, v3

    invoke-virtual {v5, p2, v4, p3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    sget p2, Lcom/amazon/kindle/recaps/R$id;->recaps_jump_forward_to_chapter_name_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "viewGroup.findViewById<T\u2026rd_to_chapter_name_label)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mRootView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v0, "inflater"

    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->createJumpForwardSheetView(Landroid/view/LayoutInflater;)Landroid/view/View;

    return-void

    :cond_0
    const-string p1, "mRootView"

    .line 45
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mRootView:Landroid/widget/FrameLayout;

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->createJumpForwardSheetView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 111
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 112
    iget-boolean v0, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mJumpedForward:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/recaps/metrics/JumpForwardSheetUserAction;->JFS_JUMPED_FORWARD_ACTION:Lcom/amazon/kindle/recaps/metrics/JumpForwardSheetUserAction;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/recaps/metrics/JumpForwardSheetUserAction;->JFS_DISMISSED_ACTION:Lcom/amazon/kindle/recaps/metrics/JumpForwardSheetUserAction;

    .line 113
    :goto_0
    sget-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    iget v2, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mCurrentBookPosition:I

    iget v3, p0, Lcom/amazon/kindle/recaps/bottomsheet/JumpForwardBottomSheetFragment;->mSuggestedPosition:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordJumpForwardSheetAction(Lcom/amazon/kindle/recaps/metrics/JumpForwardSheetUserAction;II)V

    return-void
.end method
