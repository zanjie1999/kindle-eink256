.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;
.super Ljava/lang/Thread;
.source "DefaultDocViewerAnnotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchNotesTextTask"
.end annotation


# instance fields
.field private provider:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;

.field private receiver:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;

.field private volatile stopped:Z

.field final synthetic this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;)V
    .locals 0

    .line 1667
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    const-string p1, "addNotes"

    .line 1668
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1665
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->stopped:Z

    .line 1669
    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->receiver:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;

    .line 1670
    iput-object p3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->provider:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1675
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->stopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 1679
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->provider:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesProvider;->provideNotes()Ljava/util/List;

    move-result-object v0

    .line 1680
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    .line 1683
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->stopped:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-static {v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->access$200(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 1687
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1688
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 1690
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-static {v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->access$300(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1691
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    .line 1692
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1693
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_6

    .line 1694
    :cond_5
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-static {v2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->access$300(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;->getAnnotatedText(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    .line 1697
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    iget-object v2, v2, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->whiteSpacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-eqz v3, :cond_8

    .line 1703
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/reader/WrappedAnnotation;->setBookText(Ljava/lang/String;)V

    .line 1706
    :cond_8
    iget-object v2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->receiver:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;

    if-eqz v2, :cond_1

    .line 1707
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;->notify(Lcom/amazon/kcp/reader/Note;)V

    goto :goto_0

    .line 1711
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->receiver:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;

    if-eqz v0, :cond_a

    .line 1712
    invoke-interface {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$NotesCallbackReceiver;->done()V

    .line 1714
    :cond_a
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-static {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->access$300(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1715
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-static {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->access$300(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;->close()V

    :cond_b
    return-void
.end method

.method public stopTask(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1724
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$FetchNotesTextTask;->stopped:Z

    if-eqz p1, :cond_0

    .line 1727
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
