.class public Lcom/amazon/kindle/tutorial/StandardFullPageActivity;
.super Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;
.source "StandardFullPageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;-><init>()V

    return-void
.end method

.method public static newIntent(Landroid/app/Activity;Lcom/amazon/kindle/tutorial/model/FullPageUI;)Landroid/content/Intent;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/tutorial/StandardFullPageActivity;

    invoke-static {v0, p0, p1}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->newBaseIntent(Ljava/lang/Class;Landroid/app/Activity;Lcom/amazon/kindle/tutorial/UserInterface;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget p1, Lcom/amazon/kindle/krl/R$layout;->full_page_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "userInterface"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    .line 28
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/StandardFullPageFragment;->newInstance(Lcom/amazon/kindle/tutorial/model/FullPageUI;)Lcom/amazon/kindle/tutorial/StandardFullPageFragment;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 30
    sget v1, Lcom/amazon/kindle/krl/R$id;->tutorial_page_fragment:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
