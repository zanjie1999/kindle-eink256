.class public final Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;
.super Lcom/amazon/falkor/BaseRefreshableFragment;
.source "OfflineBottomSheetFragments.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineBottomSheetFragments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineBottomSheetFragments.kt\ncom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment\n*L\n1#1,156:1\n*E\n"
.end annotation


# static fields
.field private static final ARG_IS_DOWNLOAD_FAILED:Ljava/lang/String; = "has_download_failed"

.field public static final Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->Companion:Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;)Lkotlin/Lazy;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseRefreshableFragment;->getMessageQueue()Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRefreshEvent(Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;Z)Lcom/amazon/kindle/krx/events/IEvent;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->getRefreshEvent(Z)Lcom/amazon/kindle/krx/events/IEvent;

    move-result-object p0

    return-object p0
.end method

.method private final getRefreshEvent(Z)Lcom/amazon/kindle/krx/events/IEvent;
    .locals 3

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "bottom_sheet_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 71
    :goto_0
    sget-object v2, Lcom/amazon/falkor/BottomSheetID;->SAMPLE_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v2}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;

    invoke-direct {v1, p1}, Lcom/amazon/falkor/event/SampleEpisodeBottomSheetRefreshEvent;-><init>(Z)V

    goto :goto_1

    .line 72
    :cond_1
    sget-object v2, Lcom/amazon/falkor/BottomSheetID;->FAVE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v2}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/amazon/falkor/event/FaveBottomSheetRefreshEvent;

    invoke-direct {v1}, Lcom/amazon/falkor/event/FaveBottomSheetRefreshEvent;-><init>()V

    goto :goto_1

    .line 73
    :cond_2
    sget-object v2, Lcom/amazon/falkor/BottomSheetID;->NEXT_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v2}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;

    invoke-direct {v1, p1}, Lcom/amazon/falkor/event/EOEBottomSheetRefreshEvent;-><init>(Z)V

    goto :goto_1

    .line 74
    :cond_3
    sget-object p1, Lcom/amazon/falkor/BottomSheetID;->STORE_TOKEN_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {p1}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance v1, Lcom/amazon/falkor/event/StoreTokenBottomSheetRefreshEvent;

    invoke-direct {v1}, Lcom/amazon/falkor/event/StoreTokenBottomSheetRefreshEvent;-><init>()V

    :cond_4
    :goto_1
    return-object v1
.end method


# virtual methods
.method protected getRefreshEvent()Lcom/amazon/kindle/krx/events/IEvent;
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->getRefreshEvent(Z)Lcom/amazon/kindle/krx/events/IEvent;

    move-result-object v0

    return-object v0
.end method

.method public final getTryAgainDescriptionText$FalkorAndroidPlugin_common_release(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 126
    sget-object v0, Lcom/amazon/falkor/BottomSheetID;->SAMPLE_EPISODE_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v0}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 127
    sget-object v1, Lcom/amazon/falkor/BottomSheetID;->STORE_TOKEN_BOTTOM_SHEET_ID:Lcom/amazon/falkor/BottomSheetID;

    invoke-virtual {v1}, Lcom/amazon/falkor/BottomSheetID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    sget p1, Lcom/amazon/falkor/R$string;->bottom_sheet_try_again_offline_text:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.botto\u2026t_try_again_offline_text)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    sget p1, Lcom/amazon/falkor/R$string;->bottom_sheet_try_again_error_text:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.botto\u2026eet_try_again_error_text)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const-string v0, "has_download_failed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "is_in_dark_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 82
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v3, "bottom_sheet_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 83
    :goto_2
    invoke-virtual {p0, p2, v1}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;->getTryAgainDescriptionText$FalkorAndroidPlugin_common_release(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    sget-object v1, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    sget-object v3, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v3}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "sdk.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 87
    sget v0, Lcom/amazon/falkor/R$layout;->bottom_sheet_try_again:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 88
    sget v0, Lcom/amazon/falkor/R$id;->bottom_sheet_try_again_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    sget v1, Lcom/amazon/falkor/R$id;->bottom_sheet_try_again_button_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    const-string/jumbo v3, "requireContext()"

    if-eqz v1, :cond_3

    .line 90
    sget-object v4, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    if-eqz v0, :cond_4

    .line 91
    new-instance v1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$onCreateView$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$onCreateView$$inlined$apply$lambda$1;-><init>(Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_4
    sget v0, Lcom/amazon/falkor/R$id;->bottom_sheet_try_again_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 109
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v5, 0x21

    invoke-virtual {v1, v4, p3, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 111
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 112
    sget p3, Lcom/amazon/falkor/R$string;->bottom_sheet_try_again_subtext:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 114
    new-instance p3, Lcom/amazon/falkor/utils/CustomTypefaceSpan;

    sget-object v2, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getEmberRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p3, v3, v2}, Lcom/amazon/falkor/utils/CustomTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 116
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 113
    invoke-virtual {v1, p3, p2, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const-string p2, "item"

    .line 121
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
