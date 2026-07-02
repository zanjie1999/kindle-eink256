.class Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LargeFontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/LargeFontAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargeFontViewHolder"
.end annotation


# instance fields
.field private final defaultView:Landroid/widget/TextView;

.field private final downloadView:Landroid/widget/ImageView;

.field private downloadingView:Landroid/view/View;

.field private final imageView:Landroid/widget/ImageView;

.field private final operations:Landroid/widget/LinearLayout;

.field private final removeView:Landroid/view/View;

.field private final sizeView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/amazon/kcp/reader/LargeFontAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/LargeFontAdapter;Landroid/view/View;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->this$0:Lcom/amazon/kcp/reader/LargeFontAdapter;

    .line 106
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    sget p1, Lcom/amazon/kcp/more/R$id;->large_font_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->imageView:Landroid/widget/ImageView;

    .line 108
    sget p1, Lcom/amazon/kcp/more/R$id;->large_font_size:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->sizeView:Landroid/widget/TextView;

    .line 109
    sget p1, Lcom/amazon/kcp/more/R$id;->large_font_operations:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    .line 110
    sget p2, Lcom/amazon/kcp/more/R$id;->large_font_download:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->downloadView:Landroid/widget/ImageView;

    .line 111
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    sget p2, Lcom/amazon/kcp/more/R$id;->large_font_remove:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->removeView:Landroid/view/View;

    .line 112
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    sget p2, Lcom/amazon/kcp/more/R$id;->large_font_default:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->defaultView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->sizeView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method clearView()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->downloadView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->defaultView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->removeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->downloadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method initializeFontImage(Landroid/content/Context;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 4

    .line 133
    invoke-virtual {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getPreviewDrawable()I

    move-result p2

    .line 134
    sget v0, Lcom/amazon/kcp/more/R$attr;->large_font_text_color:I

    .line 135
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 137
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 139
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 140
    iget-object p2, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setFontStateToDownloaded(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 6

    .line 181
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->clearView()V

    .line 183
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getResourceSizeString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->isSupportDeletion()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->removeView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->this$0:Lcom/amazon/kcp/reader/LargeFontAdapter;

    invoke-static {v3}, Lcom/amazon/kcp/reader/LargeFontAdapter;->access$100(Lcom/amazon/kcp/reader/LargeFontAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kcp/more/R$string;->accessibility_setting_large_fonts_delete_button:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->defaultView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 192
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->this$0:Lcom/amazon/kcp/reader/LargeFontAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/reader/LargeFontAdapter;->access$100(Lcom/amazon/kcp/reader/LargeFontAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/more/R$string;->setting_large_fonts_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method setFontStateToDownloading(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->clearView()V

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->downloadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDefaultFont()Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->this$0:Lcom/amazon/kcp/reader/LargeFontAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/reader/LargeFontAdapter;->access$100(Lcom/amazon/kcp/reader/LargeFontAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/more/R$string;->accessibility_font_download_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->this$0:Lcom/amazon/kcp/reader/LargeFontAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/reader/LargeFontAdapter;->access$100(Lcom/amazon/kcp/reader/LargeFontAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/more/R$string;->accessibility_font_downloading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method setFontStateToNeedDownload(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 6

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->clearView()V

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->downloadView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getResourceSizeString()Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v2, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->this$0:Lcom/amazon/kcp/reader/LargeFontAdapter;

    invoke-static {v3}, Lcom/amazon/kcp/reader/LargeFontAdapter;->access$100(Lcom/amazon/kcp/reader/LargeFontAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kcp/more/R$string;->accessibility_font_download:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setUpOperations(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 3

    .line 144
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDefaultFont()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    sget v1, Lcom/amazon/kcp/more/R$id;->large_font_downloading:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->downloadingView:Landroid/view/View;

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    sget v1, Lcom/amazon/kcp/more/R$id;->large_font_downloading_with_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->downloadingView:Landroid/view/View;

    .line 150
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->setFontStateToDownloaded(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->setFontStateToDownloading(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->setFontStateToNeedDownload(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;

    iget-object v2, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->this$0:Lcom/amazon/kcp/reader/LargeFontAdapter;

    invoke-direct {v1, v2, p1, p0}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;-><init>(Lcom/amazon/kcp/reader/LargeFontAdapter;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method speakFontStateForAccessibility()V
    .locals 3

    .line 197
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->operations:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_1
    return-void
.end method
