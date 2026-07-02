.class Lcom/amazon/appexpan/client/AppExpanClient$4;
.super Landroid/content/BroadcastReceiver;
.source "AppExpanClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/AppExpanClient;->registerConnectivityChangeListener(Landroid/content/Context;Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/appexpan/client/AppExpanClient;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/AppExpanClient;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient$4;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 558
    invoke-static {p1}, Lcom/amazon/appexpan/client/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 560
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Requesting Manifest on network connectivity change event"

    invoke-static {p1, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient$4;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    invoke-static {p1}, Lcom/amazon/appexpan/client/AppExpanClient;->access$100(Lcom/amazon/appexpan/client/AppExpanClient;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 564
    iget-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient$4;->this$0:Lcom/amazon/appexpan/client/AppExpanClient;

    iget-object p1, p1, Lcom/amazon/appexpan/client/AppExpanClient;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadResources()V

    :cond_0
    return-void
.end method
