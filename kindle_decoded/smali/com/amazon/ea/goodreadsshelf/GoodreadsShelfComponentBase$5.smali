.class Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$5;
.super Ljava/lang/Object;
.source "GoodreadsShelfComponentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->createAndShowWarningDialog(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

.field final synthetic val$newShelf:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$5;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    iput-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$5;->val$newShelf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 510
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 511
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$5;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getBaseReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object p1

    .line 512
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$5;->val$newShelf:Ljava/lang/String;

    const-string v0, "ShelfAction"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v0, "AnyActionsWarningAlert"

    const-string v1, "PerformCancel"

    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
