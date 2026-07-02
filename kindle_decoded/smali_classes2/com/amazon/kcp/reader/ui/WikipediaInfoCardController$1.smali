.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;
.super Landroid/os/AsyncTask;
.source "WikipediaInfoCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->loadQuery(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$that:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->val$that:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 97
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$200()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_default_base_url_UK:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_default_base_url_US:I

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->info_card_wikipedia_path:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {v1, v2, p1, v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Ljava/lang/String;Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;)V

    .line 104
    new-instance p1, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaResponseHandler;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-direct {p1, v2, v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaResponseHandler;-><init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;)V

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->val$that:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->val$query:Ljava/lang/String;

    .line 105
    invoke-static {v2, v3}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$500(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->val$that:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    .line 106
    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$400(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    const/4 v2, 0x1

    .line 107
    invoke-interface {p1, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    const/16 v3, 0x1b58

    .line 108
    invoke-interface {p1, v3}, Lcom/amazon/kindle/webservices/IWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    .line 109
    invoke-interface {p1, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->val$that:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setQuery(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$1;->val$that:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->showProgressBar()V

    return-void
.end method
