.class public Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;
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
    name = "ThumbnailManagerReadyEvent"
.end annotation


# instance fields
.field private final thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/IThumbnailManager;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    return-void
.end method


# virtual methods
.method public getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
