.class public Lcom/amazon/kindle/event/AssetDownloadEvent;
.super Ljava/lang/Object;
.source "AssetDownloadEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;
    }
.end annotation


# instance fields
.field private asset:Lcom/amazon/kindle/services/download/IBookAsset;

.field private bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private type:Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IBookAsset;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/amazon/kindle/event/AssetDownloadEvent;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/event/AssetDownloadEvent;->type:Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;

    .line 23
    iput-object p3, p0, Lcom/amazon/kindle/event/AssetDownloadEvent;->asset:Lcom/amazon/kindle/services/download/IBookAsset;

    return-void
.end method


# virtual methods
.method public getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/event/AssetDownloadEvent;->asset:Lcom/amazon/kindle/services/download/IBookAsset;

    return-object v0
.end method

.method public getBookId()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/event/AssetDownloadEvent;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getEventType()Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/event/AssetDownloadEvent;->type:Lcom/amazon/kindle/event/AssetDownloadEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
