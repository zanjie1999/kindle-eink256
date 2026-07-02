.class public abstract Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;
.super Ljava/lang/Object;
.source "KRFCustomTaskReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CustomKRFTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

.field protected final historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

.field protected final krfDocViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

.field private final onTaskError:Ljava/lang/Runnable;

.field private final onTaskFinished:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    .line 71
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->this$0:Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->this$0:Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;

    iget-object v0, p1, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->krfDocViewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    .line 65
    iget-object v0, p1, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    .line 66
    iget-object p1, p1, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    .line 72
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->onTaskFinished:Ljava/lang/Runnable;

    .line 73
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->onTaskError:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getTaskErrorRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->onTaskError:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getTaskFinishedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;->onTaskFinished:Ljava/lang/Runnable;

    return-object v0
.end method
