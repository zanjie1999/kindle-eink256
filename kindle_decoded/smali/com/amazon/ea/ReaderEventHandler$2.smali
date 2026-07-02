.class Lcom/amazon/ea/ReaderEventHandler$2;
.super Ljava/lang/Object;
.source "ReaderEventHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ReaderEventHandler;->asyncProcessSidecar(Lcom/amazon/kindle/krx/content/IBook;Z)V
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
.field final synthetic this$0:Lcom/amazon/ea/ReaderEventHandler;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic val$onBookOpen:Z


# direct methods
.method constructor <init>(Lcom/amazon/ea/ReaderEventHandler;Lcom/amazon/kindle/krx/content/IBook;Z)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler$2;->this$0:Lcom/amazon/ea/ReaderEventHandler;

    iput-object p2, p0, Lcom/amazon/ea/ReaderEventHandler$2;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-boolean p3, p0, Lcom/amazon/ea/ReaderEventHandler$2;->val$onBookOpen:Z

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

    .line 463
    invoke-virtual {p0}, Lcom/amazon/ea/ReaderEventHandler$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/amazon/ea/ReaderEventHandler$2;->this$0:Lcom/amazon/ea/ReaderEventHandler;

    iget-object v1, p0, Lcom/amazon/ea/ReaderEventHandler$2;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    iget-boolean v2, p0, Lcom/amazon/ea/ReaderEventHandler$2;->val$onBookOpen:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/ReaderEventHandler;->processSidecar(Lcom/amazon/kindle/krx/content/IBook;Z)V

    const/4 v0, 0x0

    return-object v0
.end method
