.class Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;
.super Landroid/os/AsyncTask;
.source "KLOInfoCardPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
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
.field final synthetic this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iput-object p2, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 p1, 0x0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    iget-object v1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v1}, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->getSidecarJson(Lcom/amazon/kindle/krx/content/IBook;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$202(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 178
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {v0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$200(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "KINDLE_LEARNING_OBJECTS"

    if-nez v0, :cond_0

    .line 180
    :try_start_1
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v2, "InfoCardsInvokedNoSidecar"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {v0, p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$302(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    return-object p1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$502(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Z)Z

    .line 185
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v2, "InfoCardsInvokedSidecar"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {v0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initializing KLO info card, found book. Now to parse."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    iget-object v1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v1, v1, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {v1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$200(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "terms"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$302(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 188
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    new-instance v1, Lcom/amazon/klo/sidecar/SidecarHandler;

    invoke-direct {v1, p1, p1}, Lcom/amazon/klo/sidecar/SidecarHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$402(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lcom/amazon/klo/sidecar/SidecarHandler;)Lcom/amazon/klo/sidecar/SidecarHandler;

    .line 190
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;->this$1:Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;

    iget-object v0, v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {v0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$400(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/klo/sidecar/SidecarHandler;

    move-result-object v0

    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->init(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object p1
.end method
