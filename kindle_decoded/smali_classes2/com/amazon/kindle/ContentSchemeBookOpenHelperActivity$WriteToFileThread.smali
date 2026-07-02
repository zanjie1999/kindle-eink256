.class Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;
.super Ljava/lang/Thread;
.source "ContentSchemeBookOpenHelperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteToFileThread"
.end annotation


# instance fields
.field private fileToWriteTo:Ljava/io/File;

.field private ip:Ljava/io/InputStream;

.field private isCanceled:Z

.field final synthetic this$0:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;Ljava/io/File;Ljava/io/InputStream;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->this$0:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;

    const-string p1, "WriteToTemporaryFileThread"

    .line 274
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 275
    iput-object p2, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->fileToWriteTo:Ljava/io/File;

    .line 276
    iput-object p3, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->ip:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->fileToWriteTo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->deleteTemporaryFile(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 4

    const/16 v0, 0x800

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 284
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->fileToWriteTo:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->ip:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->isCanceled:Z

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 294
    iget-boolean v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->isCanceled:Z

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->this$0:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;

    invoke-static {v0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->access$200(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;)Lcom/amazon/foundation/internal/StringEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->fileToWriteTo:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/StringEventProvider;->notifyListeners(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->access$000()Ljava/lang/String;

    goto :goto_2

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->cleanUp()V

    .line 300
    invoke-static {}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->access$000()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catch_1
    nop

    .line 303
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to create a temporary file to write to in ContentSchemeBookOpenHelperActivity.WriteToFileThread.run()"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->cleanUp()V

    if-eqz v1, :cond_2

    .line 307
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 309
    :catch_2
    invoke-static {}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Had exception closing the WriteToFileThread.FileOutputStream"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public setCancelFlag(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$WriteToFileThread;->isCanceled:Z

    return-void
.end method
