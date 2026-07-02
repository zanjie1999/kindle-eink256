.class Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1$1;
.super Ljava/lang/Object;
.source "ContentSchemeBookOpenHelperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;->execute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1$1;->this$1:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;

    iput-object p2, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1$1;->this$1:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;

    iget-object v0, v0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1;->this$0:Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;

    iget-object v1, p0, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity$1$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->openTemporaryFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    invoke-static {}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to open the temporary file in ContentSchemeBookOpenHelperActivity.temporaryFileCreatedCallback.execute()"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
