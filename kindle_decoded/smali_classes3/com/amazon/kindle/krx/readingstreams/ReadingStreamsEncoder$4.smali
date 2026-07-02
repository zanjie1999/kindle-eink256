.class Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;
.super Ljava/lang/Object;
.source "ReadingStreamsEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

.field final synthetic val$context:Ljava/lang/String;

.field final synthetic val$metadata:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    iput-object p2, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$context:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$metadata:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 526
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$400(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 531
    invoke-static {}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$300()Ljava/lang/String;

    const-string v3, "showContext for context %s, metadata %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$context:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$metadata:Ljava/util/Map;

    .line 532
    invoke-static {v5}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$500(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 531
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 535
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$metadata:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 536
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$600(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/rma/rs/encoding/MessageEncoder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$context:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$metadata:Ljava/util/Map;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->showContext(Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_0

    .line 538
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$600(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)Lcom/amazon/rma/rs/encoding/MessageEncoder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$context:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Lcom/amazon/rma/rs/encoding/MessageEncoder;->showContext(Ljava/lang/String;J)V

    .line 541
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    invoke-static {v3}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$700(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;)V

    .line 543
    iget-object v3, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->this$0:Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;

    iget-object v4, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$context:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$800(Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 545
    invoke-static {}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$300()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$context:Ljava/lang/String;

    aput-object v5, v2, v1

    iget-object v1, p0, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder$4;->val$metadata:Ljava/util/Map;

    .line 546
    invoke-static {v1}, Lcom/amazon/kindle/krx/readingstreams/ReadingStreamsEncoder;->access$500(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Exception calling showContext for context %s, metadata %s"

    .line 545
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
