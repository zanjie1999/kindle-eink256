.class public final Lcom/amazon/android/docviewer/PageZoomChangeEvent;
.super Ljava/lang/Object;
.source "PageZoomChangeEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final isZoomed:Z


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Z)V
    .locals 1

    const-string v0, "docViewer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/PageZoomChangeEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-boolean p2, p0, Lcom/amazon/android/docviewer/PageZoomChangeEvent;->isZoomed:Z

    return-void
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isZoomed()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/PageZoomChangeEvent;->isZoomed:Z

    return v0
.end method
