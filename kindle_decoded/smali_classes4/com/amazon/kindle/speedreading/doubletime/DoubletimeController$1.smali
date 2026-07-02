.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->startDoubletimeMode(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field final synthetic val$navigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

.field final synthetic val$readerModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Lcom/amazon/kindle/krx/reader/IBookNavigator;Lcom/amazon/kindle/krx/reader/IReaderModeHandler;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;->val$navigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;->val$readerModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;->val$navigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->updateMostRecentPageReadPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;->val$readerModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    .line 141
    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->access$000(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    .line 140
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->setReaderMode(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->access$100(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    return-void
.end method
