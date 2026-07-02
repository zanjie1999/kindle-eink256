.class final Lcom/amazon/whispersync/dcp/framework/FileHelpers$3;
.super Ljava/lang/Object;
.source "FileHelpers.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/FileHelpers;->recursiveDelete(Ljava/io/File;)Z
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 4

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FileHelpers;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Successfully deleted: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/FileHelpers$3;->execute(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
