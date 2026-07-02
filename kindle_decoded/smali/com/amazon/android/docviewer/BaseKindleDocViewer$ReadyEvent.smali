.class public Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;
.super Ljava/lang/Object;
.source "BaseKindleDocViewer.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/BaseKindleDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadyEvent"
.end annotation


# instance fields
.field docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
