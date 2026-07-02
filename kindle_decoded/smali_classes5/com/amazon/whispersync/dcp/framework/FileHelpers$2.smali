.class final Lcom/amazon/whispersync/dcp/framework/FileHelpers$2;
.super Ljava/lang/Object;
.source "FileHelpers.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/FileHelpers;->recursiveDeleteFromMediaProvider(Landroid/content/Context;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/Task<",
        "Ljava/lang/Boolean;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/FileHelpers$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/FileHelpers$2;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/FileHelpers$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->deleteFileFromMediaProvider(Landroid/content/Context;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/FileHelpers$2;->val$f:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Deleted file: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/FileHelpers$2;->execute(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
