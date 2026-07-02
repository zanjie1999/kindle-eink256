.class Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$6;
.super Ljava/lang/Object;
.source "ReadingActionsGoodreadsShelfComponentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->createAndShowWarningDialog(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$6;->this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 488
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$6;->this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;

    invoke-virtual {v0}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getBaseReadingStreamsContextMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "AnyActionsWarningAlert"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
