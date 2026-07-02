.class public abstract Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;
.super Ljava/lang/Object;
.source "KRFCustomTaskReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

.field protected m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

.field protected m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 29
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    .line 30
    new-instance v0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    .line 31
    new-instance v0, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    goto :goto_0

    .line 33
    :cond_0
    sget-object p1, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Received null viewer in constructor"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->delete()V

    .line 40
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_historyManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/HistoryManager;->delete()V

    .line 41
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver;->m_viewer:Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentViewer;->delete()V

    return-void
.end method

.method public abstract submitCustomKRFTask(Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/android/docviewer/mobi/krf/KRFCustomTaskReceiver$CustomKRFTask<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end method
