.class Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;
.super Ljava/lang/Object;
.source "KLOInfoCardPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/infocard/KLOInfoCardPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookOpenListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;


# direct methods
.method private constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lcom/amazon/klo/infocard/KLOInfoCardPlugin$1;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KLO info card plugin leaving book, discarding sidecar."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$202(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 163
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1, v0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$402(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lcom/amazon/klo/sidecar/SidecarHandler;)Lcom/amazon/klo/sidecar/SidecarHandler;

    .line 164
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1, v0}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$302(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 165
    invoke-static {}, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->release()V

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 170
    new-instance v0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener$1;-><init>(Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 203
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initializing KLO info card, trying to find book..."

    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 204
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    iget-object p1, p0, Lcom/amazon/klo/infocard/KLOInfoCardPlugin$BookOpenListener;->this$0:Lcom/amazon/klo/infocard/KLOInfoCardPlugin;

    invoke-static {p1}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$100(Lcom/amazon/klo/infocard/KLOInfoCardPlugin;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/klo/infocard/KLOInfoCardPlugin;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "End of initialize KLO info card."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method
