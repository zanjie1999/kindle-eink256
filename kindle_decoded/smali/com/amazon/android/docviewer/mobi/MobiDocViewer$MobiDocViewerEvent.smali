.class public Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;
.super Ljava/lang/Object;
.source "MobiDocViewer.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobiDocViewerEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;
    }
.end annotation


# instance fields
.field private type:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;)V
    .locals 0

    .line 2762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2763
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;->type:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;
    .locals 1

    .line 2772
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;->type:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
