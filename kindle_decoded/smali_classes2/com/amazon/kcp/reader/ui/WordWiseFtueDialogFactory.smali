.class public Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;
.super Ljava/lang/Object;
.source "WordWiseFtueDialogFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;


# instance fields
.field private exampleView:Landroid/widget/ImageView;

.field private introView:Landroid/widget/TextView;

.field private isOnBookOpen:Z

.field private isOnBookOpenToSrl:Z

.field private isShowingFtue:Z

.field private isShowingTutorial:Z

.field private languageSelectionView:Landroid/view/View;

.field private lock:Lcom/amazon/kcp/info/TutorialLock;

.field private preambleView:Landroid/widget/TextView;

.field private questionView:Landroid/widget/TextView;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private selectedLanguage:Ljava/lang/String;

.field private shouldShowFooterTutorialAfterFTUE:Z

.field private showTutorialOnDictionaryComplete:Z

.field private titleView:Landroid/widget/TextView;

.field private usageView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpenToSrl:Z

    .line 75
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpen:Z

    .line 76
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showTutorialOnDictionaryComplete:Z

    .line 77
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isShowingTutorial:Z

    .line 78
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isShowingFtue:Z

    .line 79
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->shouldShowFooterTutorialAfterFTUE:Z

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 107
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->lock:Lcom/amazon/kcp/info/TutorialLock;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showFooterTutorialIfNecessary()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->selectedLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->selectedLanguage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isShowingFtue:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Lcom/amazon/kcp/info/TutorialLock;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->lock:Lcom/amazon/kcp/info/TutorialLock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->shouldShowFooterTutorialAfterFTUE:Z

    return p0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->shouldShowFooterTutorialAfterFTUE:Z

    return p1
.end method

.method static synthetic access$502(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isShowingTutorial:Z

    return p1
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setExampleImage(Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V

    return-void
.end method

.method private createFooterTutorialView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 622
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 623
    sget v1, Lcom/amazon/kindle/ww/R$layout;->tutorial_view_wordwise_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 624
    sget v1, Lcom/amazon/kindle/ww/R$id;->triangle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 626
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 627
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getPageMargin()Lcom/amazon/kindle/krx/reader/PageMargin;

    move-result-object v4

    .line 628
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/reader/PageMargin;->getRightMargin()I

    move-result v4

    .line 629
    sget v5, Lcom/amazon/kindle/ww/R$dimen;->reader_footer_offset_from_bottom:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/amazon/kindle/ww/R$dimen;->word_wise_footer_height:I

    .line 630
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v5, v3

    .line 631
    invoke-virtual {v1, v2, v2, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 633
    :cond_0
    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$9;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getCurrentFtueVersion()I
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$integer;->tutorial_reader_wordwise_version:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getFtueVersionToShow()I
    .locals 4

    .line 388
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "SHOWN_FTUE_VERSION"

    .line 391
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 393
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getCurrentFtueVersion()I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v2, :cond_2

    .line 397
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->shouldShowFtueDialogVersion(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_2
    return v1
.end method

.method public static declared-synchronized getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;
    .locals 2

    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->instance:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    sput-object v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->instance:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    goto :goto_0

    .line 99
    :cond_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->instance:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eq v1, p0, :cond_1

    .line 100
    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->instance:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    iput-object p0, v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 102
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->instance:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setExampleImage(Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    .line 688
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 689
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 691
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    if-ne v0, p1, :cond_2

    .line 692
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->exampleView:Landroid/widget/ImageView;

    sget v0, Lcom/amazon/kindle/ww/R$drawable;->wordwise_ftue_wwbox_dark_cn:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 694
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->exampleView:Landroid/widget/ImageView;

    sget v0, Lcom/amazon/kindle/ww/R$drawable;->wordwise_ftue_wwbox_dark:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 697
    :cond_3
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    if-ne v0, p1, :cond_4

    .line 698
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->exampleView:Landroid/widget/ImageView;

    sget v0, Lcom/amazon/kindle/ww/R$drawable;->wordwise_ftue_wwbox_light_cn:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 700
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->exampleView:Landroid/widget/ImageView;

    sget v0, Lcom/amazon/kindle/ww/R$drawable;->wordwise_ftue_wwbox_light:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method private setFtueDialogContentForNewUser(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 5

    .line 441
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->titleView:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 442
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getDefaultSelectedLanguage()Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    move-result-object v0

    .line 443
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setExampleImage(Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V

    .line 444
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setLanguageSelectionView(Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V

    .line 446
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishLocale()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishMarketPlace()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 447
    :goto_1
    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_preamble_non_en_user:I

    if-eqz v1, :cond_3

    .line 449
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_preamble_en_user_pre_enabled:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_preamble_en_user:I

    .line 451
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->preambleView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 452
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->introView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_intro_en_user:I

    goto :goto_3

    :cond_4
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_intro_non_en_user:I

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 453
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->questionView:Landroid/widget/TextView;

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v2, 0x8

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "WordWiseFtuePreEnabled"

    .line 457
    invoke-static {v1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    const-string v0, "FtuxWithHintLanguageShownPreEnabled"

    .line 459
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 462
    :cond_6
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_negative_button_default_on:I

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$4;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    :cond_7
    const-string v1, "FtuxShownDisabled"

    .line 479
    invoke-static {v1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const-string v0, "FtuxWithHintLanguageShownDisabled"

    .line 481
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 484
    :cond_8
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_negative_button_default_off:I

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$5;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 494
    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_positive_button_default_off:I

    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$6;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_4
    return-void
.end method

.method private setFtueDialogContentForVersion(ILandroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 430
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setFtueDialogContentForNewUser(Landroidx/appcompat/app/AlertDialog$Builder;)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setFtueDialogContentForVersion2(Landroidx/appcompat/app/AlertDialog$Builder;)V

    :goto_0
    return-void
.end method

.method private setFtueDialogContentForVersion2(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->titleView:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_title_v2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 522
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    .line 523
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setExampleImage(Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V

    .line 524
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setLanguageSelectionView(Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V

    .line 526
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->preambleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->usageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->introView:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_intro_v2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->questionView:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_question_v2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 531
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 532
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enabled"

    goto :goto_0

    :cond_0
    const-string v1, "Disabled"

    .line 534
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeHintJitShown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    .line 536
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_negative_button_default_off:I

    new-instance v3, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$7;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$7;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 548
    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_ftue_positive_button_v2:I

    new-instance v3, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$8;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method private setLanguageSelectionView(Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V
    .locals 4

    if-nez p1, :cond_0

    .line 658
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->languageSelectionView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->languageSelectionView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->languageSelectionView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ww/R$id;->chinese_language_radiobutton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 664
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->languageSelectionView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ww/R$id;->english_language_radiobutton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 666
    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$1;)V

    .line 667
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    sget-object v2, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    const/4 v3, 0x1

    if-ne v2, p1, :cond_1

    .line 671
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 677
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->selectedLanguage:Ljava/lang/String;

    return-void
.end method

.method private shouldShowFtueDialogVersion(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v0

    .line 412
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isChineseLocale()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isChineseMarketplace()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private showFooterTutorialIfNecessary()V
    .locals 5

    .line 568
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsActivity;->isShowingSettingsActivity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 569
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showTutorialOnDictionaryComplete:Z

    .line 570
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    .line 571
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 573
    invoke-static {v2}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 574
    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v4

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    .line 575
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentReaderNavigationMode()Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->lock:Lcom/amazon/kcp/info/TutorialLock;

    invoke-interface {v2}, Lcom/amazon/kcp/info/TutorialLock;->tryLockTutorials()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->createSurfaceOverReader()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 580
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    invoke-interface {v3, v0, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->setOverlaysVisible(ZZ)V

    .line 581
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->createFooterTutorialView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 582
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isShowingTutorial:Z

    goto :goto_0

    .line 587
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showTutorialOnDictionaryComplete:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkAndShowFtueDialog()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 204
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpen:Z

    .line 205
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->shouldShowFtueDialog()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->WORDWISE_FTUE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    .line 206
    invoke-static {v1}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->useLegacyTutorial(Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 209
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 212
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->areOverlaysVisible()Z

    move-result v2

    .line 215
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 217
    instance-of v4, v3, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/amazon/kcp/reader/ReaderActivity;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 218
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 225
    :cond_3
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$2;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V

    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 222
    :cond_4
    :goto_2
    iput-boolean v5, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpen:Z

    .line 223
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showTutorialOnDictionaryComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasNewFtueDialog()Z
    .locals 7

    .line 176
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->hasShownFtueDialog()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v3, "SHOWN_FTUE_VERSION"

    .line 184
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 185
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/ww/R$integer;->tutorial_reader_wordwise_version:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-le v4, v5, :cond_3

    add-int/lit8 v4, v5, -0x1

    .line 188
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 189
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "SHOWN_PINYIN_FTUE_VERSION"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    if-le v5, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public hasShownFooterTutorial()Z
    .locals 5

    .line 603
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "SHOWN_FTUE_VERSION"

    .line 607
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "WordWiseDifficultySliderShown"

    .line 610
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 611
    iget-boolean v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isShowingTutorial:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isShowingFtue:Z

    if-nez v4, :cond_1

    if-lez v2, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onBookOpenToSrlEvent(Lcom/amazon/kindle/krx/events/OnBookOpenToSRLEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    const/4 p1, 0x1

    .line 130
    :try_start_0
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpenToSrl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onLocalBookItemEvent(Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getType()Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->SHOW_NEW_FEATURE:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->checkAndShowFtueDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onOverlayVisibilityChange(Z)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    .line 145
    :try_start_0
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpen:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpen:Z

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showFtueDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 149
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSettingsChange()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpenToSrl:Z

    return-void
.end method

.method public declared-synchronized onUIEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->checkAndShowFtueDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onWordWiseContentStatusEvent(Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 157
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->showTutorialOnDictionaryComplete:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->hasDictionaryDownloadCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method shouldShowFtueDialog()Z
    .locals 6

    .line 239
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->hasShownFtueDialog()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 252
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->TAG:Ljava/lang/String;

    const-string v3, "Showing FTUE since Word Wise is on"

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 260
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isOnBookOpenToSrl:Z

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->TAG:Ljava/lang/String;

    const-string v3, "Skipping FTUE for SRL event"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const/4 v1, 0x3

    .line 268
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getAccountProperty(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CHILD"

    .line 269
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->TAG:Ljava/lang/String;

    const-string v3, "Showing FTUE for the account role"

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 275
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishLocale()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isEnglishMarketPlace()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 276
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 279
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openSidecarForBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->getFtueMarketplaces()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    :goto_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->TAG:Ljava/lang/String;

    const-string v3, "Showing FTUE for the marketplace"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v0

    .line 288
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->TAG:Ljava/lang/String;

    const-string v3, "Showing FTUE"

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 240
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping FTUE: hasShown? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->hasShownFtueDialog()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; supported? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-interface {v0, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_8
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->hasShownFtueDialog()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->WORDWISE_FTUE_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    invoke-static {v0, v2}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->setLegacyTutorialShownCount(Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;I)V

    :cond_9
    return v1
.end method

.method protected showFtueDialog()V
    .locals 8

    .line 303
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->hasShownFtueDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getFtueVersionToShow()I

    move-result v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->lock:Lcom/amazon/kcp/info/TutorialLock;

    invoke-interface {v2}, Lcom/amazon/kcp/info/TutorialLock;->tryLockTutorials()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v3}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 321
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 327
    :cond_3
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/ww/R$layout;->wordwise_ftue_dialog:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 331
    sget v6, Lcom/amazon/kindle/ww/R$id;->wordwise_ftue_title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->titleView:Landroid/widget/TextView;

    .line 332
    sget v6, Lcom/amazon/kindle/ww/R$id;->wordwise_ftue_preamble:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->preambleView:Landroid/widget/TextView;

    .line 333
    sget v6, Lcom/amazon/kindle/ww/R$id;->wordwise_ftue_intro:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->introView:Landroid/widget/TextView;

    .line 334
    sget v6, Lcom/amazon/kindle/ww/R$id;->wordwise_ftue_usage:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->usageView:Landroid/widget/TextView;

    .line 335
    sget v6, Lcom/amazon/kindle/ww/R$id;->wordwise_ftue_question:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->questionView:Landroid/widget/TextView;

    .line 336
    sget v6, Lcom/amazon/kindle/ww/R$id;->wordwise_ftue_example:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->exampleView:Landroid/widget/ImageView;

    .line 337
    sget v6, Lcom/amazon/kindle/ww/R$id;->wordwise_ftue_language_selection_radio_group:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->languageSelectionView:Landroid/view/View;

    .line 339
    invoke-direct {p0, v1, v4}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->setFtueDialogContentForVersion(ILandroidx/appcompat/app/AlertDialog$Builder;)V

    .line 340
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 344
    sget-object v3, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    new-instance v4, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;

    invoke-direct {v4, p0, v3, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$3;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 363
    invoke-static {v2, v1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    const/4 v1, 0x1

    .line 364
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->isShowingFtue:Z

    .line 367
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getCurrentFtueVersion()I

    move-result v1

    const-string v2, "SHOWN_FTUE_VERSION"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "WordWiseFtueShown"

    .line 370
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
