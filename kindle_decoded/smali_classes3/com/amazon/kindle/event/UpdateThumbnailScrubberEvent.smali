.class public Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;
.super Ljava/lang/Object;
.source "UpdateThumbnailScrubberEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final position:I


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p2, p0, Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;->position:I

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/kindle/event/UpdateThumbnailScrubberEvent;->position:I

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
