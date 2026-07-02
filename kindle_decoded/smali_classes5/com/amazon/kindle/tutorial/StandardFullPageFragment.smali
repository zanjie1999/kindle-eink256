.class public Lcom/amazon/kindle/tutorial/StandardFullPageFragment;
.super Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;
.source "StandardFullPageFragment.java"


# static fields
.field private static final UI_KEY:Ljava/lang/String; = "userInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/FullPageTutorialBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/amazon/kindle/tutorial/model/FullPageUI;)Lcom/amazon/kindle/tutorial/StandardFullPageFragment;
    .locals 3

    .line 25
    new-instance v0, Lcom/amazon/kindle/tutorial/StandardFullPageFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/StandardFullPageFragment;-><init>()V

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userInterface"

    .line 27
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 28
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    sget p2, Lcom/amazon/kindle/krl/R$id;->main_tutorial_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xf

    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method public setUpButtons(Landroid/view/View;)V
    .locals 2

    .line 48
    sget v0, Lcom/amazon/kindle/krl/R$id;->close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/amazon/kindle/tutorial/StandardFullPageFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/tutorial/StandardFullPageFragment$1;-><init>(Lcom/amazon/kindle/tutorial/StandardFullPageFragment;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
