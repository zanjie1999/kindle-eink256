.class Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;
.super Ljava/lang/Object;
.source "KuSignupRequest.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ku/service/KuSignupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;

.field private final context:Landroid/content/Context;

.field private final queue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->context:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->callback:Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;

    .line 188
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getKrxMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;-><init>(Landroid/content/Context;Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 219
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "Error"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v2, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v1, v2, v3}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->callback:Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;

    if-eqz v0, :cond_1

    .line 224
    invoke-interface {v0, p1}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;->onError(Lcom/android/volley/VolleyError;)V

    :cond_1
    return-void
.end method

.method public onResponse(Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;)V
    .locals 4

    .line 196
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-class v0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest;

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

    .line 198
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sucessful: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v2, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v1, v2, v3}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 203
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->callback:Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;

    if-eqz v0, :cond_2

    .line 204
    invoke-interface {v0, p1}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;->onSuccess(Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 208
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->callback:Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 209
    invoke-interface {p1, v0}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$Callback;->onError(Lcom/android/volley/VolleyError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/service/KuSignupRequest$CallbackWrapper;->onResponse(Lcom/amazon/bookwizard/ku/service/KuSignupRequest$KuSignupResponse;)V

    return-void
.end method
