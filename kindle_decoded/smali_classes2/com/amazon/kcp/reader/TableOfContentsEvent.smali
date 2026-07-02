.class public Lcom/amazon/kcp/reader/TableOfContentsEvent;
.super Ljava/lang/Object;
.source "TableOfContentsEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;
    }
.end annotation


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final type:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kcp/reader/TableOfContentsEvent;->type:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/reader/TableOfContentsEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/reader/TableOfContentsEvent;->type:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    .line 20
    iput-object p2, p0, Lcom/amazon/kcp/reader/TableOfContentsEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/reader/TableOfContentsEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/reader/TableOfContentsEvent;->type:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
