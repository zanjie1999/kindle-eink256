.class public Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;
.super Ljava/lang/Object;
.source "DocViewerInitialDrawEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public getPublisher()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
