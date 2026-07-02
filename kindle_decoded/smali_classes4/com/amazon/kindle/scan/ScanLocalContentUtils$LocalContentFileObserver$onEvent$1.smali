.class final Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;
.super Ljava/lang/Object;
.source "ScanLocalContentUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:I

.field final synthetic $relativePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    iput p2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->$event:I

    iput-object p3, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->$relativePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "LocalContentFileObserver file event"

    const/4 v1, 0x1

    .line 471
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 472
    iget-object v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    iget-object v1, v1, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLocalContentChangedCallback()Lcom/amazon/kindle/scan/LocalContentChangedCallback;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->$event:I

    iget-object v3, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    invoke-static {v3}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->access$getPath$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->$relativePath:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kindle/scan/LocalContentChangedCallback;->onFileEvent(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 473
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 477
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    iget-object v0, v0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-static {v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->access$getScanCompleted$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    iget-object v0, v0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getLastScanned()Ljava/util/Properties;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    invoke-static {v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->access$getPath$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    invoke-static {v4}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->access$getPath$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver$onEvent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;

    iget-object v0, v0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$LocalContentFileObserver;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->writeLastScanned(IZ)V

    :cond_0
    return-void
.end method
