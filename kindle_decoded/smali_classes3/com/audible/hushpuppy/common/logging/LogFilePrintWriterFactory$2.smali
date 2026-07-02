.class Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$2;
.super Ljava/lang/Object;
.source "LogFilePrintWriterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->deleteOldLogFile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$2;->this$0:Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$2;->this$0:Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->access$000(Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;)Lcom/audible/mobile/framework/Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x7

    .line 179
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 181
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$2;->this$0:Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;

    invoke-static {v2}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->access$100(Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 185
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hp.log"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AmazonKindle."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$2;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting log file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
