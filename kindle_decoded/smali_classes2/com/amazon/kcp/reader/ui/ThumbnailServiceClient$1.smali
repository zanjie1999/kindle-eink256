.class Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;
.super Ljava/lang/Object;
.source "ThumbnailServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$102(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 153
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$202(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;Z)Z

    .line 154
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$302(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;Z)Z

    const-string p1, "ThumbnailScrubber"

    const-string v0, "onServiceConnected"

    .line 155
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 157
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThumbnailServer up and connected."

    .line 158
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$500(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "ThumbnailScrubber"

    const-string v0, "onServiceDisconnected"

    .line 166
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$400(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 168
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ThumbnailServer DISCONNECTED."

    .line 169
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$102(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$200(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$600(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 175
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-static {p1, v1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->access$202(Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;Z)Z

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ThumbnailServiceClient;->requestDocumentOpen()V

    return-void
.end method
