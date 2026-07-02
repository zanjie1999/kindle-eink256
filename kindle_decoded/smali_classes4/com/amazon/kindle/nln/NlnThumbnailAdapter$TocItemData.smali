.class Lcom/amazon/kindle/nln/NlnThumbnailAdapter$TocItemData;
.super Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;
.source "NlnThumbnailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TocItemData"
.end annotation


# instance fields
.field private final pos:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$ItemData;-><init>(II)V

    .line 242
    iput p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$TocItemData;->pos:I

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$TocItemData;->pos:I

    return v0
.end method
