.class public Lcom/amazon/xray/ui/widget/ThankYouFeedbackToast;
.super Landroid/widget/Toast;
.source "ThankYouFeedbackToast.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/ThankYouFeedbackToast;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public makeToast()Landroid/widget/Toast;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/ThankYouFeedbackToast;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_info_card_log_feedback_thankyou:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method
