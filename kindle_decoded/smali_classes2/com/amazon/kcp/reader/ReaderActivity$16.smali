.class Lcom/amazon/kcp/reader/ReaderActivity$16;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$viewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 1620
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$16;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$16;->val$viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$16;->val$viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_2

    .line 1624
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1625
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1628
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1629
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$16;->val$viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->saveLocalBookState()V

    .line 1634
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    .line 1640
    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->clearServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    .line 1642
    invoke-interface {v0}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->persistJournal()V

    :cond_2
    return-void
.end method
