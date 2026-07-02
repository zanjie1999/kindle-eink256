.class public Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;
.super Landroid/app/DialogFragment;
.source "SendFeedbackDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$FeedbackDialogOnShowListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_TAG_ASIN:Ljava/lang/String; = "asin"

.field private static final BUNDLE_TAG_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final BUNDLE_TAG_EMBEDDED_ID:Ljava/lang/String; = "embeddedId"

.field private static final BUNDLE_TAG_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final BUNDLE_TAG_WIDGETS:Ljava/lang/String; = "widgets"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;ILjava/util/List;)Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;

    invoke-direct {v0}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;-><init>()V

    .line 64
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_dialog_theme:I

    .line 65
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedResourceId(I)I

    move-result v1

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v0, v2, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "orientation"

    .line 68
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "asin"

    .line 69
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "embeddedId"

    .line 70
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "contentType"

    .line 71
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    check-cast p4, Ljava/util/ArrayList;

    const-string/jumbo p0, "widgets"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    new-instance v0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$FeedbackDialogOnShowListener;

    invoke-direct {v0, p1}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$FeedbackDialogOnShowListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 90
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ea/R$layout;->startactions_dialog_send_feedback:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 92
    sget p2, Lcom/amazon/kindle/ea/R$id;->feedback_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 93
    sget p3, Lcom/amazon/kindle/ea/R$id;->feedback_send:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 94
    sget v0, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    sget v1, Lcom/amazon/kindle/ea/R$id;->usefulness_prompt:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    sget v2, Lcom/amazon/kindle/ea/R$id;->usefulness_radio_group:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 97
    sget v3, Lcom/amazon/kindle/ea/R$id;->radio_yes:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 98
    sget v4, Lcom/amazon/kindle/ea/R$id;->radio_no:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 99
    sget v5, Lcom/amazon/kindle/ea/R$id;->comments_prompt:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 100
    sget v6, Lcom/amazon/kindle/ea/R$id;->comments:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 102
    sget v7, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v7}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v7

    .line 103
    sget v8, Lcom/amazon/kindle/ea/R$array;->startactions_send_feedback_dialog_background_color:I

    .line 104
    invoke-static {v8}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v8

    .line 107
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    sget v8, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v8}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 111
    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 112
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 114
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_feedback_dialog_edit_text_background:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "asin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ClickedFeedbackSubmit"

    .line 119
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "ClickedFeedbackCancel"

    .line 120
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "SendFeedbackSuccess"

    .line 121
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$1;

    invoke-direct {v1, p0, p3}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$1;-><init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 134
    new-instance v1, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$2;-><init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance p2, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;

    invoke-direct {p2, p0, v0, v2}, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$3;-><init>(Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Landroid/widget/RadioGroup;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string p3, "Feedback"

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 250
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 252
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Feedback"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method
