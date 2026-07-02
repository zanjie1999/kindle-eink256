.class public Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;
.super Lcom/amazon/xray/ui/fragment/ThemedDialogFragment;
.source "FeedbackDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;,
        Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;
    }
.end annotation


# static fields
.field private static final ARGUMENT_ASIN:Ljava/lang/String; = "asin"

.field private static final ARGUMENT_EMBEDDED_ID:Ljava/lang/String; = "embeddedId"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/ThemedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;
    .locals 3

    .line 51
    new-instance v0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-direct {v0}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "asin"

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "embeddedId"

    .line 55
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$1;-><init>(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    new-instance v0, Lcom/amazon/xray/ui/listener/FeedbackDialogOnShowListener;

    invoke-direct {v0, p1}, Lcom/amazon/xray/ui/listener/FeedbackDialogOnShowListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/xray/R$layout;->xray_dialog_feedback:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 80
    sget p2, Lcom/amazon/kindle/xray/R$id;->xray_feedback_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 81
    sget p3, Lcom/amazon/kindle/xray/R$id;->xray_feedback_send:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 82
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_feedback_dialog_prompt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_comments:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 85
    sget v3, Lcom/amazon/kindle/xray/R$id;->xray_dialog_title:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 87
    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_feedback_dialog_prompt:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 88
    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_feedback_dialog_comment_hint:I

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 89
    sget v4, Lcom/amazon/kindle/xray/R$string;->xray_feedback_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 91
    new-instance v4, Lcom/amazon/xray/ui/listener/CancelOnClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/xray/ui/listener/CancelOnClickListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v4, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;

    invoke-direct {v4, p0, v2}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;-><init>(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {p3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v4, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;

    invoke-direct {v4, p3}, Lcom/amazon/xray/ui/listener/CommentsTextWatcher;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 97
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 98
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSeparatorColor()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 102
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getFeedbackDialogEditTextBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 102
    invoke-static {v2, p2}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string p3, "XrayFeedback"

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 114
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "XrayFeedback"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method
