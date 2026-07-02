.class public Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;
.super Lcom/amazon/xray/ui/fragment/ThemedDialogFragment;
.source "InfoCardFeedbackDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;
    }
.end annotation


# static fields
.field private static final ARGUMENT_ASIN:Ljava/lang/String; = "asin"

.field private static final ARGUMENT_EMBEDDED_ID:Ljava/lang/String; = "embeddedId"

.field private static final ARGUMENT_END_POSITION:Ljava/lang/String; = "endPosition"

.field private static final ARGUMENT_ENTITY_LABEL:Ljava/lang/String; = "entityLabel"

.field private static final ARGUMENT_ERROR_TYPE:Ljava/lang/String; = "errorType"

.field private static final ARGUMENT_FEEDBACK_HELPFUL:Ljava/lang/String; = "feedbackHelpful"

.field private static final ARGUMENT_START_POSITION:Ljava/lang/String; = "startPosition"


# instance fields
.field private dialogOnSubmitPressedListener:Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/ThemedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;)Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;->dialogOnSubmitPressedListener:Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;
    .locals 3

    .line 67
    new-instance v0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-direct {v0}, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "asin"

    .line 70
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "embeddedId"

    .line 71
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "feedbackHelpful"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "entityLabel"

    .line 73
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "errorType"

    .line 74
    invoke-virtual {v1, p0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 77
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "startPosition"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz p4, :cond_1

    .line 81
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "endPosition"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    new-instance v0, Lcom/amazon/xray/ui/listener/FeedbackDialogOnShowListener;

    invoke-direct {v0, p1}, Lcom/amazon/xray/ui/listener/FeedbackDialogOnShowListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/xray/R$layout;->xray_dialog_feedback:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 108
    sget p2, Lcom/amazon/kindle/xray/R$id;->xray_feedback_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 109
    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_feedback_send:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 110
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_feedback_dialog_prompt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_comments:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 113
    sget v3, Lcom/amazon/kindle/xray/R$id;->xray_dialog_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_feedback_dialog_prompt_info_card:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 116
    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_feedback_dialog_comment_hint_info_card:I

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 117
    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_feedback_dialog_title_info_card:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 119
    new-instance v3, Lcom/amazon/xray/ui/listener/CancelOnClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/xray/ui/listener/CancelOnClickListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v3, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;

    invoke-direct {v3, p0, v2}, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment$SendOnClickListener;-><init>(Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {p3, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v3, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;

    invoke-direct {v3, p3}, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 125
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 126
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSeparatorColor()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 129
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    .line 130
    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getFeedbackDialogEditTextBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 129
    invoke-static {v2, p2}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 137
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public setDialogOnSubmitListener(Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;->dialogOnSubmitPressedListener:Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;

    return-void
.end method
