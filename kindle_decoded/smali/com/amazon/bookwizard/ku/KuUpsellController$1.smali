.class Lcom/amazon/bookwizard/ku/KuUpsellController$1;
.super Ljava/lang/Object;
.source "KuUpsellController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ku/KuUpsellController;->onSignUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

.field final synthetic val$queue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ku/KuUpsellController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$1;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$1;->val$queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;)V
    .locals 4

    .line 195
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-class v0, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Signup Response: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$1;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-static {v0}, Lcom/amazon/bookwizard/ku/KuUpsellController;->access$000(Lcom/amazon/bookwizard/ku/KuUpsellController;)Lcom/amazon/bookwizard/ui/BookWizardActivity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$1;->val$queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$1;->val$queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 192
    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/KuUpsellController$1;->onResponse(Lcom/amazon/bookwizard/ku/service/KuPreviewSignupRequest$KuPreviewSignupResponse;)V

    return-void
.end method
