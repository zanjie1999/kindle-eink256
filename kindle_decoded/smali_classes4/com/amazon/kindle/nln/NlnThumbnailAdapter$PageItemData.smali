.class Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;
.super Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;
.source "NlnThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageItemData"
.end annotation


# instance fields
.field private page:Lcom/amazon/kindle/nln/IThumbnailPage;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/IThumbnailPage;I)V
    .locals 1

    const/4 v0, 0x1

    .line 220
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;-><init>(II)V

    .line 221
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;->page:Lcom/amazon/kindle/nln/IThumbnailPage;

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$PageItemData;->page:Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    return v0
.end method
