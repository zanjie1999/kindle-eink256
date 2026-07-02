.class Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;
.super Ljava/lang/Object;
.source "NewsstandCMSLink.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/cms/NewsstandCMSLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMSConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;


# direct methods
.method private constructor <init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/nwstd/cms/NewsstandCMSLink$1;)V
    .locals 0

    .line 544
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;-><init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/amazon/kindle/cms/api/CMSServer;)V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$500(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$600(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$600(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/CMSServer;->disconnect()V

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v1, p1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$602(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/kindle/cms/api/CMSServer;)Lcom/amazon/kindle/cms/api/CMSServer;

    .line 558
    iget-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {p1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$700(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V

    .line 561
    iget-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$802(Lcom/amazon/nwstd/cms/NewsstandCMSLink;J)J

    .line 562
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConnectException(Ljava/lang/Throwable;)V
    .locals 4

    .line 567
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$500(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 568
    :try_start_0
    invoke-static {}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$900()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "Received a connection exception callback from CMS. We have lost connection. Triggering retry."

    invoke-static {v1, v2, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    iget-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$602(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/kindle/cms/api/CMSServer;)Lcom/amazon/kindle/cms/api/CMSServer;

    .line 573
    iget-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {p1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$1000(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V

    .line 574
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDisconnect()V
    .locals 3

    .line 579
    invoke-static {}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$900()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "CMS disconnected our client. We should retry in a little bit."

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$500(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$602(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/kindle/cms/api/CMSServer;)Lcom/amazon/kindle/cms/api/CMSServer;

    .line 585
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;->this$0:Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->access$1000(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V

    .line 586
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
