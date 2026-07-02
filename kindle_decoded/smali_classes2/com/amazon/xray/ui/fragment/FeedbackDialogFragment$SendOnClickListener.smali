.class Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;
.super Ljava/lang/Object;
.source "FeedbackDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendOnClickListener"
.end annotation


# instance fields
.field private final commentsEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;->commentsEditText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 151
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;->commentsEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "asin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "embeddedId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Lcom/amazon/xray/model/message/FeedbackMessage;

    invoke-direct {v2, v0, v1, p1}, Lcom/amazon/xray/model/message/FeedbackMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;

    invoke-direct {v0, v1, v2}, Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment$SendFeedbackAsyncTask;-><init>(Lcom/amazon/xray/ui/fragment/FeedbackDialogFragment;Lcom/amazon/xray/model/message/FeedbackMessage;)V

    .line 157
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    .line 160
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayFeedback"

    const-string v1, "SendFeedback"

    .line 162
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
