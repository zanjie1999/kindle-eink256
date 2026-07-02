.class public final Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;
.super Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;
.source "DownloadableFontsViewHolder.kt"


# instance fields
.field private context:Landroid/content/Context;

.field private defaultView:Landroid/widget/TextView;

.field private downloadView:Landroid/widget/ImageView;

.field private downloadingView:Landroid/view/View;

.field private imageView:Landroid/widget/ImageView;

.field private operations:Landroid/widget/LinearLayout;

.field private removeView:Landroid/widget/ImageView;

.field private sizeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;)V
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v0, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_downloadable_font_list_item:I

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;I)V

    return-void
.end method

.method public static final synthetic access$setFontStateToDownloading(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->setFontStateToDownloading(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    return-void
.end method

.method public static final synthetic access$setFontStateToNeedDownload(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->setFontStateToNeedDownload(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    return-void
.end method

.method private final clearView()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->downloadView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->defaultView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->removeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->downloadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "downloadingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "removeView"

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "defaultView"

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "downloadView"

    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final initializeFontImage(Landroid/content/Context;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 1

    .line 62
    invoke-virtual {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p2

    const-string v0, "fontInfo.downloadableFont"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getPreviewDrawable()I

    move-result p2

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const-string p1, "imageView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final setFontStateToDownloaded(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 6

    .line 123
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->clearView()V

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->updateDownloadColors(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 126
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    const-string v1, "fontInfo.fontFamily"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getResourceSizeString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    const-string v2, "fontInfo.downloadableFont"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->isSupportDeletion()Z

    move-result p1

    const-string v2, "context"

    const-string/jumbo v3, "operations"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->removeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->accessibility_setting_large_fonts_delete_button:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_2
    const-string/jumbo p1, "removeView"

    .line 130
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->defaultView:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->setting_large_fonts_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_7
    const-string p1, "defaultView"

    .line 133
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method private final setFontStateToDownloading(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->clearView()V

    .line 102
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->updateDownloadColors(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->downloadingView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDefaultFont()Z

    move-result p1

    const-string v0, "context"

    const-string/jumbo v2, "operations"

    if-nez p1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->accessibility_font_download_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->accessibility_font_downloading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "downloadingView"

    .line 103
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setFontStateToNeedDownload(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 6

    .line 113
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->clearView()V

    .line 114
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->updateDownloadColors(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->downloadView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    const-string v3, "fontInfo.fontFamily"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getResourceSizeString()Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/amazon/kindle/krl/R$string;->accessibility_font_download:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "context"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo p1, "operations"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "downloadView"

    .line 115
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setUpOperations(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 5

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDefaultFont()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    const/4 v2, 0x0

    const-string/jumbo v3, "operations"

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    sget v4, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_downloading:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->downloadingView:Landroid/view/View;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    sget v4, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_downloading_with_cancel:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->downloadingView:Landroid/view/View;

    .line 74
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->setFontStateToDownloaded(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->setFontStateToDownloading(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    goto :goto_1

    .line 79
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->setFontStateToNeedDownload(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;-><init>(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateDownloadColors(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    const-string v1, "context"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    sget v3, Lcom/amazon/kindle/krl/R$color;->aa_menu_v2_downloadable_font_undownloaded_color:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 141
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 144
    sget v1, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2DownloadableFontsColor:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 145
    iget v0, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 149
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->sizeView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->defaultView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    const-string p1, "defaultView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string/jumbo p1, "sizeView"

    .line 149
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "imageView"

    .line 148
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public bind(Ljava/lang/Object;I)V
    .locals 1

    .line 154
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->bind(Ljava/lang/Object;I)V

    .line 156
    instance-of p2, p1, Lcom/mobipocket/android/drawing/FontFamily;

    if-eqz p2, :cond_2

    .line 157
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p2

    check-cast p1, Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 159
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->initializeFontImage(Landroid/content/Context;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 160
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->sizeView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getResourceSizeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->setUpOperations(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "sizeView"

    .line 160
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "context"

    .line 159
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->initializeView(Landroid/view/View;)V

    .line 35
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    if-eqz v0, :cond_6

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->imageView:Landroid/widget/ImageView;

    .line 36
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->downloadView:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_remove:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->removeView:Landroid/widget/ImageView;

    .line 38
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_default:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->defaultView:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->sizeView:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_downloadable_font_operations:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->operations:Landroid/widget/LinearLayout;

    .line 41
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->defaultView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "this.defaultView.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->context:Landroid/content/Context;

    return-void

    :cond_0
    const-string p1, "defaultView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
