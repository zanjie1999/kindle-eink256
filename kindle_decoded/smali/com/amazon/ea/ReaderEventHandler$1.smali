.class Lcom/amazon/ea/ReaderEventHandler$1;
.super Ljava/lang/Object;
.source "ReaderEventHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ReaderEventHandler;->onSidecarDownloaded(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ReaderEventHandler;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 275
    iput-object p2, p0, Lcom/amazon/ea/ReaderEventHandler$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/amazon/ea/ReaderEventHandler$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/amazon/ea/ReaderEventHandler$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    sget-object v1, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->END_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-static {v0, v1}, Lcom/amazon/ea/util/SidecarFileUtil;->getSidecarFileSize(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)I

    move-result v0

    const-string v1, "SidecarSizeInBytes"

    .line 278
    invoke-static {v1, v0}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0
.end method
