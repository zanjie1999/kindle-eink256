.class Lcom/amazon/reader/notifications/impl/ChannelsManager$1;
.super Ljava/lang/Object;
.source "ChannelsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/reader/notifications/impl/ChannelsManager;->downloadChannelSettingsAsynchronously(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/reader/notifications/impl/ChannelsManager;

.field final synthetic val$marketplace:Ljava/lang/String;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/amazon/reader/notifications/impl/ChannelsManager;Ljava/lang/String;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;->this$0:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    iput-object p2, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;->val$marketplace:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ChannelsManager"

    :try_start_0
    const-string v1, "Check For Channel Updates Asynchronously"

    .line 169
    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;->this$0:Lcom/amazon/reader/notifications/impl/ChannelsManager;

    iget-object v2, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;->val$marketplace:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->access$000(Lcom/amazon/reader/notifications/impl/ChannelsManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Failed to download channel settings file from CloudFront"

    .line 172
    invoke-static {v0, v2, v1}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 175
    throw v0
.end method
