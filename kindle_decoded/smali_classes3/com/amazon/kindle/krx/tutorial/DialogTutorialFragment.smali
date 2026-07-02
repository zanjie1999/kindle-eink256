.class public Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DialogTutorialFragment.java"


# static fields
.field private static final CANCEL:Ljava/lang/String; = "CANCEL_BUTTON"

.field private static final DESC:Ljava/lang/String; = "TUTORIAL_DESCRIPTION"

.field private static final HEADER:Ljava/lang/String; = "TUTORIAL_HEADER"

.field private static final NEGATIVE:Ljava/lang/String; = "NEGATIVE_BUTTON"

.field private static final POSITIVE:Ljava/lang/String; = "POSITIVE_BUTTON"

.field public static currentFragment:Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;


# instance fields
.field private image:Landroid/graphics/drawable/Drawable;

.field private tutorial:Lcom/amazon/kindle/krx/tutorial/DialogTutorial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;)Lcom/amazon/kindle/krx/tutorial/DialogTutorial;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->tutorial:Lcom/amazon/kindle/krx/tutorial/DialogTutorial;

    return-object p0
.end method

.method public static newInstance(Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/DialogTutorial;)Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;
    .locals 1

    .line 88
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;-><init>()V

    .line 89
    sput-object v0, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->currentFragment:Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;

    .line 90
    iput-object p2, v0, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->image:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object p6, v0, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->tutorial:Lcom/amazon/kindle/krx/tutorial/DialogTutorial;

    .line 92
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p6, "TUTORIAL_HEADER"

    .line 93
    invoke-virtual {p2, p6, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "TUTORIAL_DESCRIPTION"

    .line 94
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "POSITIVE_BUTTON"

    .line 95
    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "NEGATIVE_BUTTON"

    .line 96
    invoke-virtual {p2, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "CANCEL_BUTTON"

    .line 97
    invoke-virtual {p2, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 109
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krxsdk/R$layout;->tutorial_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 112
    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->dialog_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TUTORIAL_HEADER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->dialog_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TUTORIAL_DESCRIPTION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->dialog_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 119
    sget-object v2, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->currentFragment:Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;

    iget-object v2, v2, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "POSITIVE_BUTTON"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment$1;-><init>(Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NEGATIVE_BUTTON"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment$2;-><init>(Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CANCEL_BUTTON"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment$3;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment$3;-><init>(Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 157
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 179
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 181
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public showDialog(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "dialog"

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
