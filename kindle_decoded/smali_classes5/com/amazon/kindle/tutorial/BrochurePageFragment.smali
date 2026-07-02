.class public Lcom/amazon/kindle/tutorial/BrochurePageFragment;
.super Landroidx/fragment/app/Fragment;
.source "BrochurePageFragment.java"


# static fields
.field private static final PAGE_NUM_KEY:Ljava/lang/String; = "pageNum"

.field private static final TAG:Ljava/lang/String;

.field private static final UI_KEY:Ljava/lang/String; = "pageUI"


# instance fields
.field private pageUI:Lcom/amazon/kindle/tutorial/model/FullPageUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kindle/tutorial/BrochurePageFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/BrochurePageFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private configureImage(Landroid/view/View;)V
    .locals 2

    .line 98
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_pager_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochurePageFragment;->pageUI:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getImageMetadata()Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setImage(Landroid/widget/ImageView;Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static newFragment(Lcom/amazon/kindle/tutorial/model/FullPageUI;I)Lcom/amazon/kindle/tutorial/BrochurePageFragment;
    .locals 3

    .line 31
    new-instance v0, Lcom/amazon/kindle/tutorial/BrochurePageFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/BrochurePageFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "pageUI"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo p0, "pageNum"

    .line 35
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setupPageComponents(Lcom/amazon/kindle/tutorial/model/FullPageUI;Landroid/view/View;)V
    .locals 4

    .line 68
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_pager_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :cond_1
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->brochure_pager_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Lcom/amazon/kindle/tutorial/BrochurePageFragment;->configureImage(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/BrochurePageFragment;->configureImage(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "pageUI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/BrochurePageFragment;->pageUI:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "pageNum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Created fragment for page %d"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 51
    sget p3, Lcom/amazon/kindle/krl/R$layout;->brochure_pager_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/BrochurePageFragment;->pageUI:Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/tutorial/BrochurePageFragment;->setupPageComponents(Lcom/amazon/kindle/tutorial/model/FullPageUI;Landroid/view/View;)V

    return-object p1
.end method
