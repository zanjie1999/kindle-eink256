.class Lcom/amazon/bookwizard/payoff/PayoffController$2;
.super Landroid/os/AsyncTask;
.source "PayoffController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/payoff/PayoffController;->postDownloadingDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/payoff/PayoffController;Ljava/util/List;)V
    .locals 0

    .line 243
    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffController$2;->val$tasks:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 243
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/payoff/PayoffController$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffController$2;->val$tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/amazon/bookwizard/payoff/PayoffController$2;->val$tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {}, Lcom/amazon/bookwizard/payoff/PayoffController;->access$000()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/bookwizard/payoff/PayoffController;->access$100()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :catch_1
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getKrxMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->BORROW:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;-><init>(Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 p1, 0x0

    return-object p1
.end method
