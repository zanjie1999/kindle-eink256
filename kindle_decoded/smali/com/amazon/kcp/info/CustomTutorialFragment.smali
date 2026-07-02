.class public Lcom/amazon/kcp/info/CustomTutorialFragment;
.super Landroidx/fragment/app/Fragment;
.source "CustomTutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;
    }
.end annotation


# static fields
.field private static final ARGS_KEY_BOTTOM_MARGIN_ID:Ljava/lang/String; = "ARGS_KEY_BOTTOM_MARGIN_ID"

.field private static final ARGS_KEY_LEFT_MARGIN_ID:Ljava/lang/String; = "ARGS_KEY_LEFT_MARGIN_ID"

.field private static final ARGS_KEY_RIGHT_MARGIN_ID:Ljava/lang/String; = "ARGS_KEY_RIGHT_MARGIN_ID"

.field private static final ARGS_KEY_TEXT_ID:Ljava/lang/String; = "ARGS_KEY_TEXT_ID"

.field private static final ARGS_KEY_TRIANGLE_DIRECTION_ID:Ljava/lang/String; = "ARGS_KEY_TRIANGLE_DIRECTION_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getDimenArgument(Ljava/lang/String;)I
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 52
    sget p3, Lcom/amazon/kindle/thirdparty/R$layout;->custom_tutorial_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "ARGS_KEY_TEXT_ID"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 55
    sget p3, Lcom/amazon/kindle/thirdparty/R$id;->tutorial_bubble:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 56
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    sget p2, Lcom/amazon/kindle/thirdparty/R$id;->triangle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v2, "ARGS_KEY_LEFT_MARGIN_ID"

    .line 61
    invoke-direct {p0, v2}, Lcom/amazon/kcp/info/CustomTutorialFragment;->getDimenArgument(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const-string v2, "ARGS_KEY_RIGHT_MARGIN_ID"

    .line 62
    invoke-direct {p0, v2}, Lcom/amazon/kcp/info/CustomTutorialFragment;->getDimenArgument(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const-string v2, "ARGS_KEY_BOTTOM_MARGIN_ID"

    .line 63
    invoke-direct {p0, v2}, Lcom/amazon/kcp/info/CustomTutorialFragment;->getDimenArgument(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARGS_KEY_TRIANGLE_DIRECTION_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    move-result-object v1

    .line 70
    sget-object v2, Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;->DOWNWARD:Lcom/amazon/kcp/info/CustomTutorialFragment$Direction;

    if-ne v1, v2, :cond_1

    .line 71
    sget v1, Lcom/amazon/kindle/thirdparty/R$drawable;->tutorial_triangle_downward:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    .line 74
    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->triangle:I

    invoke-virtual {p2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x3

    .line 75
    invoke-virtual {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 76
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :cond_1
    new-instance p2, Lcom/amazon/kcp/info/CustomTutorialFragment$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/info/CustomTutorialFragment$1;-><init>(Lcom/amazon/kcp/info/CustomTutorialFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
