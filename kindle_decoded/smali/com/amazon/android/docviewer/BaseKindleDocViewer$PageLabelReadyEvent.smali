.class public Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;
.super Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;
.source "BaseKindleDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/BaseKindleDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageLabelReadyEvent"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method
