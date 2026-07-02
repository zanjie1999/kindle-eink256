.class public Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "JITTutorialFragmentActivity.java"


# static fields
.field public static final DEFAULT_ORIENTATION:I = 0x0

.field public static final JIT_TUTORIAL:Ljava/lang/String; = "jit_tutorial"

.field private static final WAITING_TIME:I = 0x1f4


# instance fields
.field private listener:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;

.field private tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$1;-><init>(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->listener:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->finishActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->hideViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->showTutorialViews()Z

    move-result p0

    return p0
.end method

.method private finishActivity()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 186
    sget v0, Lcom/amazon/kindle/krxsdk/R$anim;->fade_out:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 187
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getInstance()Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->nextTutorial()V

    return-void
.end method

.method private hideViews()V
    .locals 1

    .line 175
    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->jit_tutorial_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

    .line 176
    invoke-virtual {v0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->hideViews()V

    return-void
.end method

.method private showTutorialViews()Z
    .locals 2

    .line 154
    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->jit_tutorial_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

    .line 155
    invoke-virtual {v0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->showTutorialViews()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getAsset()Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->CHROME:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->showReaderChromeIfNotVisible()V

    .line 163
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->hideViewPanel()V

    .line 166
    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;->LEFT_PANEL:Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->showViewPanelIfNotVisible()V

    .line 168
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->hideReaderChrome()V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getTutorial()Lcom/amazon/kindle/krx/tutorial/Tutorial;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 122
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_0

    .line 123
    sget p1, Lcom/amazon/kindle/krxsdk/R$style;->Theme_Transparent:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 125
    :cond_0
    sget p1, Lcom/amazon/kindle/krxsdk/R$layout;->activity_tutorial_fragment:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 126
    sget p1, Lcom/amazon/kindle/krxsdk/R$id;->jit_tutorial_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v1, "jit_tutorial"

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    :cond_1
    instance-of v0, v1, Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    if-eqz v0, :cond_2

    .line 133
    check-cast v1, Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    iput-object v1, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->setTutorial(Lcom/amazon/kindle/krx/tutorial/JITTutorial;)V

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->listener:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->setTutorialLayoutListener(Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;)V

    .line 140
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->hideViews()V

    .line 141
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->showTutorialViews()Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 61
    sget v0, Lcom/amazon/kindle/krxsdk/R$id;->jit_tutorial_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

    .line 62
    invoke-virtual {v0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->getHighlightView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->hideViews()V

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;-><init>(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 109
    new-instance v1, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$3;-><init>(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
