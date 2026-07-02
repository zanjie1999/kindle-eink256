.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;
.super Lcom/amazon/kcp/reader/ui/ReaderLocationSeeker;
.source "PeriodicalLocationSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;,
        Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;
    }
.end annotation


# instance fields
.field private allArticlesButton:Landroid/widget/Button;

.field private loadingIndicator:Landroid/widget/ProgressBar;

.field private navigatorDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

.field private nextArticleButtonTextView:Landroid/widget/TextView;

.field private nextButton:Landroid/widget/ImageButton;

.field private overlaysDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;

.field private periodicalHorizontalLine:Landroid/view/View;

.field private prevArticleButtonTextView:Landroid/widget/TextView;

.field private prevButton:Landroid/widget/ImageButton;

.field private settings:Lcom/amazon/kcp/application/UserSettingsController;

.field private settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLocationSeeker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)V

    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 58
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 60
    iget-object p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->settingsChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->updateColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->overlaysDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->navigatorDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    return-object p0
.end method

.method private applyColorResources(IIIIII)V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingLeft()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getPaddingRight()I

    move-result v2

    .line 274
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getPaddingBottom()I

    move-result v3

    .line 275
    iget-object v4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 276
    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, p5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 277
    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 280
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    if-eqz p3, :cond_1

    .line 281
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getPaddingLeft()I

    move-result p3

    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getPaddingRight()I

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getPaddingBottom()I

    move-result v2

    .line 285
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 286
    iget-object p4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {p4, p5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 287
    iget-object p4, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {p4, p3, v0, v1, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 290
    :cond_1
    iget-object p3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->titleView:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 291
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 292
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 293
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->titleView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLocationSeeker;->locationInfoView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 297
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 298
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLocationSeeker;->locationInfoView:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private updateColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 16

    move-object/from16 v0, p1

    .line 232
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, v1, :cond_0

    .line 233
    sget v3, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_bottom_chrome_black_bg:I

    sget v4, Lcom/amazon/kindle/newsstand/core/R$color;->white:I

    sget v5, Lcom/amazon/kindle/newsstand/core/R$drawable;->previous_button_dark:I

    sget v6, Lcom/amazon/kindle/newsstand/core/R$drawable;->next_button_dark:I

    sget v7, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_top_chrome_black:I

    sget v8, Lcom/amazon/kindle/newsstand/core/R$color;->location_bar_info_black_color:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->applyColorResources(IIIIII)V

    goto :goto_0

    .line 240
    :cond_0
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, v1, :cond_1

    .line 241
    sget v3, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_bottom_chrome_sepia_bg:I

    sget v4, Lcom/amazon/kindle/newsstand/core/R$color;->black:I

    sget v5, Lcom/amazon/kindle/newsstand/core/R$drawable;->previous_button_light:I

    sget v6, Lcom/amazon/kindle/newsstand/core/R$drawable;->next_button_light:I

    sget v7, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_top_chrome_sepia:I

    sget v8, Lcom/amazon/kindle/newsstand/core/R$color;->location_bar_info_sepia_color:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->applyColorResources(IIIIII)V

    goto :goto_0

    .line 248
    :cond_1
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, v1, :cond_2

    .line 249
    sget v3, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_bottom_chrome_green_bg:I

    sget v4, Lcom/amazon/kindle/newsstand/core/R$color;->black:I

    sget v5, Lcom/amazon/kindle/newsstand/core/R$drawable;->previous_button_light:I

    sget v6, Lcom/amazon/kindle/newsstand/core/R$drawable;->next_button_light:I

    sget v7, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_top_chrome_green:I

    sget v8, Lcom/amazon/kindle/newsstand/core/R$color;->location_bar_info_green_color:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->applyColorResources(IIIIII)V

    goto :goto_0

    .line 257
    :cond_2
    sget v10, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_bottom_chrome_white_bg:I

    sget v11, Lcom/amazon/kindle/newsstand/core/R$color;->black:I

    sget v12, Lcom/amazon/kindle/newsstand/core/R$drawable;->previous_button_light:I

    sget v13, Lcom/amazon/kindle/newsstand/core/R$drawable;->next_button_light:I

    sget v14, Lcom/amazon/kindle/newsstand/core/R$drawable;->ic_reader_top_chrome_white:I

    sget v15, Lcom/amazon/kindle/newsstand/core/R$color;->location_bar_info_color:I

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->applyColorResources(IIIIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onFinishInflate()V

    .line 68
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->location_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->titleView:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->prev_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    .line 70
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->next_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    .line 71
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->all_articles_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->allArticlesButton:Landroid/widget/Button;

    .line 72
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_prev_article_txt:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevArticleButtonTextView:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->menuitem_next_article_txt:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextArticleButtonTextView:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_horizontal_line:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->periodicalHorizontalLine:Landroid/view/View;

    .line 75
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->loading_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->loadingIndicator:Landroid/widget/ProgressBar;

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->updateColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 124
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->navigatorDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;->isLastArticle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->navigatorDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    if-eqz v0, :cond_1

    .line 131
    invoke-interface {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;->isFirstArticle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setNavigatorDelegator(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;)V
    .locals 2

    .line 156
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->navigatorDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$2;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 182
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$3;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->allArticlesButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 204
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$4;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->navigatorDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    if-eqz v0, :cond_3

    .line 223
    invoke-interface {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;->getArticleTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->setTitle(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setOverlaysDelegator(Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->overlaysDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;

    return-void
.end method

.method public setSeekPosition(I)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    .line 108
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->navigatorDelegator:Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;->getArticleTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->setTitle(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->loadingIndicator:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLocationSeeker;->callback:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;->isLocationInfoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->prevArticleButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->allArticlesButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->nextArticleButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->periodicalHorizontalLine:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
