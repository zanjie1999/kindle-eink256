.class Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;
.super Ljava/lang/Object;
.source "AuthorSubscriptionsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeButtonClickListener"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final button:Landroid/widget/Button;

.field final synthetic this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;->asin:Ljava/lang/String;

    .line 274
    iput-object p3, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;->button:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 279
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    new-instance p1, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;->this$0:Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$SubscribeButtonClickListener;->asin:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController$FlipFollowAuthorStatusAsyncTask;-><init>(Lcom/amazon/ea/ui/widget/authorsubscription/AuthorSubscriptionsController;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 282
    :cond_0
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method
