.class public Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;
.super Ljava/lang/Object;
.source "ResourceAttachedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final assetId:Ljava/lang/String;

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final resourceFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 17
    iput-object p2, p0, Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;->assetId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;->resourceFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/yj/events/ResourceAttachedEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
