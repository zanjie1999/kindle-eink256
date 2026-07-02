.class public Lcom/amazon/whispersync/roboguice/util/Ln$Print;
.super Ljava/lang/Object;
.source "Ln.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/util/Ln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Print"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getScope(I)Ljava/lang/String;
    .locals 3

    .line 267
    sget-object v0, Lcom/amazon/whispersync/roboguice/util/Ln;->config:Lcom/amazon/whispersync/roboguice/util/Ln$BaseConfig;

    iget v1, v0, Lcom/amazon/whispersync/roboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p0, v0, p0

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/whispersync/roboguice/util/Ln;->config:Lcom/amazon/whispersync/roboguice/util/Ln$BaseConfig;

    iget-object v1, v1, Lcom/amazon/whispersync/roboguice/util/Ln$BaseConfig;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 272
    :cond_0
    iget-object p0, v0, Lcom/amazon/whispersync/roboguice/util/Ln$BaseConfig;->scope:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public println(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x5

    .line 257
    invoke-static {v0}, Lcom/amazon/whispersync/roboguice/util/Ln$Print;->getScope(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/roboguice/util/Ln$Print;->processMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected processMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 261
    sget-object v0, Lcom/amazon/whispersync/roboguice/util/Ln;->config:Lcom/amazon/whispersync/roboguice/util/Ln$BaseConfig;

    iget v0, v0, Lcom/amazon/whispersync/roboguice/util/Ln$BaseConfig;->minimumLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 262
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
