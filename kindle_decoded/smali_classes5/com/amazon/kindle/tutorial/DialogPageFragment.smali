.class public Lcom/amazon/kindle/tutorial/DialogPageFragment;
.super Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;
.source "DialogPageFragment.java"


# static fields
.field private static final UI_KEY:Ljava/lang/String; = "userInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/tutorial/DialogPageFragment;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/DialogPageFragment;->handleAction(Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    return-void
.end method

.method private handleAction(Lcom/amazon/kindle/tutorial/model/ActionConfig;)V
    .locals 5

    .line 133
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getTopic()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/tutorial/DialogPageFragment$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/kindle/tutorial/DialogPageFragment$4;-><init>(Lcom/amazon/kindle/tutorial/DialogPageFragment;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static newInstance(Lcom/amazon/kindle/tutorial/model/FullPageUI;)Lcom/amazon/kindle/tutorial/DialogPageFragment;
    .locals 3

    .line 31
    new-instance v0, Lcom/amazon/kindle/tutorial/DialogPageFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/DialogPageFragment;-><init>()V

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userInterface"

    .line 33
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    sget p2, Lcom/amazon/kindle/krl/R$id;->main_tutorial_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xf

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method public setUpButtons(Landroid/view/View;)V
    .locals 6

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;->getUserInterface()Lcom/amazon/kindle/tutorial/UserInterface;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getPositiveTutorialButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TutorialButton;->getAction()Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v4

    .line 60
    sget v5, Lcom/amazon/kindle/krl/R$id;->full_page_button_positive:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TutorialButton;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v2, Lcom/amazon/kindle/tutorial/DialogPageFragment$1;

    invoke-direct {v2, p0, v1, v4}, Lcom/amazon/kindle/tutorial/DialogPageFragment$1;-><init>(Lcom/amazon/kindle/tutorial/DialogPageFragment;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getNegativeTutorialButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TutorialButton;->getAction()Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v4

    .line 84
    sget v5, Lcom/amazon/kindle/krl/R$id;->full_page_button_negative:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/model/TutorialButton;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v2, Lcom/amazon/kindle/tutorial/DialogPageFragment$2;

    invoke-direct {v2, p0, v1, v4}, Lcom/amazon/kindle/tutorial/DialogPageFragment$2;-><init>(Lcom/amazon/kindle/tutorial/DialogPageFragment;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getNeutralTutorialButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialButton;->getAction()Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v2

    .line 108
    sget v4, Lcom/amazon/kindle/krl/R$id;->full_page_button_neutral:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TutorialButton;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v0, Lcom/amazon/kindle/tutorial/DialogPageFragment$3;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kindle/tutorial/DialogPageFragment$3;-><init>(Lcom/amazon/kindle/tutorial/DialogPageFragment;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/ActionConfig;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method
