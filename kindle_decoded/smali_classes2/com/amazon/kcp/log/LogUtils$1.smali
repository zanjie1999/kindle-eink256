.class final Lcom/amazon/kcp/log/LogUtils$1;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/log/LogUtils;->getUploadContent(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$process:Ljava/lang/Process;

.field final synthetic val$result:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/Process;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/log/LogUtils$1;->val$process:Ljava/lang/Process;

    iput-object p2, p0, Lcom/amazon/kcp/log/LogUtils$1;->val$result:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/log/LogUtils$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/log/LogUtils$1;->val$result:Ljava/lang/StringBuilder;

    const-string v2, "ERR: "

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/LogUtils;->access$000(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method
