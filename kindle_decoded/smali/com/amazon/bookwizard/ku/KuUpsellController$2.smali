.class Lcom/amazon/bookwizard/ku/KuUpsellController$2;
.super Ljava/lang/Object;
.source "KuUpsellController.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ku/KuUpsellController;->onSignUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

.field final synthetic val$queue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ku/KuUpsellController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$2;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$2;->val$queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 209
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$2;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-static {p1}, Lcom/amazon/bookwizard/ku/KuUpsellController;->access$100(Lcom/amazon/bookwizard/ku/KuUpsellController;)Lcom/amazon/bookwizard/ui/BookWizardActivity;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "Error"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$2;->val$queue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
