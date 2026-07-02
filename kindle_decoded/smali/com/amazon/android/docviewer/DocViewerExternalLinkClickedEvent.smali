.class public Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;
.super Ljava/lang/Object;
.source "DocViewerExternalLinkClickedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private publisher:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;->publisher:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 11
    iput-object p2, p0, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPublisher()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;->publisher:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/android/docviewer/DocViewerExternalLinkClickedEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
