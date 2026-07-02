.class final Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;
.super Ljava/lang/Object;
.source "WorkflowUtils.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->verifyFileSystem(Ljava/io/File;ZJLcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkflowUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkflowUtils.kt\ncom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,316:1\n13506#2,2:317\n*E\n*S KotlinDebug\n*F\n+ 1 WorkflowUtils.kt\ncom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1\n*L\n141#1,2:317\n*E\n"
.end annotation


# instance fields
.field final synthetic $cleanupOldTempFiles:Z

.field final synthetic $downloadDirectory:Ljava/io/File;

.field final synthetic $krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field final synthetic $logTag:Ljava/lang/String;

.field final synthetic $minFreeSpace:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$logTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iput-boolean p4, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$cleanupOldTempFiles:Z

    iput-wide p5, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$minFreeSpace:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->call()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final call()V
    .locals 11

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory already exists. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->setLastModifiedDateAsNow(Ljava/io/File;)Z

    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$logTag:Ljava/lang/String;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plain file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists, this should not happen."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "DownloadContentService"

    const-string v3, "MkdirsFailed"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->avaliableSizeForPath(Ljava/lang/String;)J

    move-result-wide v0

    .line 130
    new-instance v8, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create location for book storage with path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Available space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    sget-object v4, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    .line 130
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v8

    .line 137
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$cleanupOldTempFiles:Z

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    sget-object v2, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1$oldTempFiles$1;->INSTANCE:Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1$oldTempFiles$1;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 317
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->avaliableSizeForPath(Ljava/lang/String;)J

    move-result-wide v0

    .line 148
    iget-wide v2, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$minFreeSpace:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    goto :goto_3

    :cond_5
    cmp-long v4, v2, v0

    if-gtz v4, :cond_6

    goto :goto_3

    .line 149
    :cond_6
    new-instance v2, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File system at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$downloadDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes left but we need at least "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt$verifyFileSystem$1;->$minFreeSpace:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    sget-object v7, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v2

    .line 149
    invoke-direct/range {v5 .. v10}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :cond_7
    :goto_3
    return-void
.end method
