.class Lcom/amazon/kcp/oob/BookInBarController$1;
.super Ljava/lang/Object;
.source "BookInBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/BookInBarController;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/BookInBarController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/BookInBarController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$1;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$1;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/BookInBarController;->access$100(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/oob/BookInBarController;->access$002(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/content/ContentMetadata;

    return-void
.end method
