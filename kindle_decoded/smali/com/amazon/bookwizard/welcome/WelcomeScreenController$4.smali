.class Lcom/amazon/bookwizard/welcome/WelcomeScreenController$4;
.super Ljava/lang/Object;
.source "WelcomeScreenController.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->checkKuPreviewEligibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$4;->this$0:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 254
    invoke-static {}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetPreviewEligibility failed"

    invoke-static {v0, v1, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$4;->this$0:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    invoke-static {p1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->access$000(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->PREVIEW_ELIGIBLE:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
