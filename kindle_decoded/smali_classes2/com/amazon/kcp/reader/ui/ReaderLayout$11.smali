.class Lcom/amazon/kcp/reader/ui/ReaderLayout$11;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysAfterDelay(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field final synthetic val$suppressNotification:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V
    .locals 0

    .line 2906
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->val$suppressNotification:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2910
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->val$suppressNotification:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 2911
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$602(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2913
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Continuing after unexpected exception while hiding overlays after delay"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
