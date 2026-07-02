.class Lcom/amazon/kcp/redding/DocumentActivity$3;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "DocumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/redding/DocumentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFirstPageTurn:Z

.field final synthetic this$0:Lcom/amazon/kcp/redding/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/DocumentActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$3;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$3;->isFirstPageTurn:Z

    return-void
.end method


# virtual methods
.method public onDocViewerAfterPositionChanged(I)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/redding/DocumentActivity$3;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    iget-object v1, v0, Lcom/amazon/kcp/redding/DocumentActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-boolean v2, p0, Lcom/amazon/kcp/redding/DocumentActivity$3;->isFirstPageTurn:Z

    if-nez v2, :cond_1

    .line 146
    invoke-static {v1, v0}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->recordPageTurnEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)V

    .line 149
    :cond_1
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 152
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    iget-object p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$3;->this$0:Lcom/amazon/kcp/redding/DocumentActivity;

    invoke-static {p1}, Lcom/amazon/kcp/redding/DocumentActivity;->access$200(Lcom/amazon/kcp/redding/DocumentActivity;)V

    :cond_3
    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/amazon/kcp/redding/DocumentActivity$3;->isFirstPageTurn:Z

    return-void
.end method
