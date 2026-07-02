.class public Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;
.super Landroid/app/Activity;
.source "WordWiseAdjustmentActivity.java"


# static fields
.field private static final DIFFICULTY_INCREMENT:I = 0x1

.field private static final SEEKER_DIVISOR:D = 25.0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentView:Landroid/view/View;

.field private fewerHintsView:Landroid/widget/TextView;

.field private hideButton:Landroid/widget/Button;

.field private indicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private isColorModeDark:Z

.field private moreHintsView:Landroid/widget/TextView;

.field private seekBar:Landroid/widget/SeekBar;

.field protected sharedPref:Landroid/content/SharedPreferences;

.field private showButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->updateProgress(I)V

    return-void
.end method

.method private updateButtons(Z)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->showButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->hideButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->isColorModeDark:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    const v1, -0x777778

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->showButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 153
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->hideButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->showButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 156
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->hideButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private updateForColorMode(Ljava/lang/String;)V
    .locals 3

    .line 257
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->isColorModeDark:Z

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->contentView:Landroid/view/View;

    sget v0, Lcom/amazon/kindle/ww/R$drawable;->bubble_container_background_dkgrey:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->fewerHintsView:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->moreHintsView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->showButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 264
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->hideButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 265
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->indicators:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 266
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 270
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ww/R$dimen;->drop_down_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->showButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->showButton:Landroid/widget/Button;

    .line 272
    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v2

    .line 271
    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->hideButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->hideButton:Landroid/widget/Button;

    .line 274
    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v2

    .line 273
    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method private updateProgress(I)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->updateView()V

    .line 211
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->persistDifficultyLevel(I)V

    return-void
.end method

.method private updateView()V
    .locals 6

    .line 132
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->getDifficultyLevel()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->seekBar:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, -0x1

    int-to-double v2, v0

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    mul-double v2, v2, v4

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->isHintVisible()Z

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 140
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->updateButtons(Z)V

    return-void
.end method


# virtual methods
.method public doNotDismiss(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected getDifficultyLevel()I
    .locals 1

    .line 230
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDifficultyLevel()I

    move-result v0

    return v0
.end method

.method protected isHintVisible()Z
    .locals 1

    .line 234
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseVisible()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-object p1, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->TAG:Ljava/lang/String;

    const-string v0, "WordWiseAdjustmentActivity created."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 65
    sget p1, Lcom/amazon/kindle/ww/R$layout;->wordwise_adjustment:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 66
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->sharedPref:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "WordWiseDifficultySliderShown"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    :cond_0
    sget p1, Lcom/amazon/kindle/ww/R$id;->wordwise_difficulty_container:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->contentView:Landroid/view/View;

    .line 74
    sget p1, Lcom/amazon/kindle/ww/R$id;->wordwise_fewer_hints:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->fewerHintsView:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/amazon/kindle/ww/R$id;->wordwise_more_hints:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->moreHintsView:Landroid/widget/TextView;

    .line 77
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->fewerHintsView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_difficulty_level_fewer_hints:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->moreHintsView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/ww/R$string;->pinyin_difficulty_level_more_hints:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 81
    :cond_1
    sget p1, Lcom/amazon/kindle/ww/R$id;->difficultySeekbar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->seekBar:Landroid/widget/SeekBar;

    .line 82
    sget p1, Lcom/amazon/kindle/ww/R$id;->wordwise_show:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->showButton:Landroid/widget/Button;

    .line 83
    sget p1, Lcom/amazon/kindle/ww/R$id;->wordwise_hide:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->hideButton:Landroid/widget/Button;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->indicators:Ljava/util/List;

    .line 85
    sget v0, Lcom/amazon/kindle/ww/R$id;->wordwise_slider_indicator_one:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->indicators:Ljava/util/List;

    sget v0, Lcom/amazon/kindle/ww/R$id;->wordwise_slider_indicator_two:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->indicators:Ljava/util/List;

    sget v0, Lcom/amazon/kindle/ww/R$id;->wordwise_slider_indicator_three:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->indicators:Ljava/util/List;

    sget v0, Lcom/amazon/kindle/ww/R$id;->wordwise_slider_indicator_four:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->indicators:Ljava/util/List;

    sget v0, Lcom/amazon/kindle/ww/R$id;->wordwise_slider_indicator_five:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->indicators:Ljava/util/List;

    sget v0, Lcom/amazon/kindle/ww/R$id;->wordwise_button_separator:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->requestFocus()Z

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 95
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ColorMode"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RightPadding"

    .line 116
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "BottomPadding"

    .line 117
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 118
    sget v2, Lcom/amazon/kindle/ww/R$id;->wordwise_padding_container:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    .line 119
    invoke-virtual {v2, v3, v3, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    if-eqz v0, :cond_2

    .line 122
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->updateForColorMode(Ljava/lang/String;)V

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->updateView()V

    return-void
.end method

.method public onHide(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->setHintVisible(Z)V

    .line 184
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshLineSpacingAndGlosses()V

    .line 185
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->updateView()V

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->recordMetricsOnHidden()V

    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 165
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->setHintVisible(Z)V

    .line 166
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshLineSpacingAndGlosses()V

    .line 167
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->updateView()V

    .line 168
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->recordMetricsOnShown()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 248
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    const/4 p1, 0x1

    return p1
.end method

.method protected persistDifficultyLevel(I)V
    .locals 2

    .line 219
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDifficultyLevel()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAdjustmentActivity;->sharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_DIFFICULTY_LEVEL:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WordWiseDifficultyLevelChanged_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected recordMetricsOnHidden()V
    .locals 1

    const-string v0, "HideHints"

    .line 193
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    return-void
.end method

.method protected recordMetricsOnShown()V
    .locals 1

    const-string v0, "ShowHints"

    .line 175
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/metrics/WordWiseMetricsHelper;->reportWordWiseAction(Ljava/lang/String;)V

    return-void
.end method

.method protected setHintVisible(Z)V
    .locals 0

    .line 238
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setWordWiseVisible(Z)V

    return-void
.end method
