.class Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;
.super Ljava/lang/Object;
.source "FeedbackViewComposerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->sendOdotMessage(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$contentGuid:Ljava/lang/String;

.field final synthetic val$endPosition:I

.field final synthetic val$errorType:Ljava/lang/String;

.field final synthetic val$startPosition:I

.field final synthetic val$userComment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

    iput-object p2, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$contentGuid:Ljava/lang/String;

    iput p4, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$startPosition:I

    iput p5, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$endPosition:I

    iput-object p6, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$userComment:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$errorType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$asin:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$contentGuid:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$startPosition:I

    iget v3, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$endPosition:I

    iget-object v4, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$userComment:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;->val$errorType:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/reportcontenterror/util/RceMessageUtil;->prepareRceMessage(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/RcePlugin;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/reportcontenterror/util/RceMessageUtil;->sendOdotMessage(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 129
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an exception while sending ODOT message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
