.class Lcom/amazon/bookwizard/welcome/WelcomeScreenController$1;
.super Ljava/lang/Object;
.source "WelcomeScreenController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->onLetsGetStartedClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/service/EmptyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$1;->this$0:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/bookwizard/service/EmptyResponse;)V
    .locals 3

    .line 164
    iget-object p1, p0, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$1;->this$0:Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    invoke-static {p1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController;->access$000(Lcom/amazon/bookwizard/welcome/WelcomeScreenController;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->COR_UPDATED:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/amazon/bookwizard/service/EmptyResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/welcome/WelcomeScreenController$1;->onResponse(Lcom/amazon/bookwizard/service/EmptyResponse;)V

    return-void
.end method
