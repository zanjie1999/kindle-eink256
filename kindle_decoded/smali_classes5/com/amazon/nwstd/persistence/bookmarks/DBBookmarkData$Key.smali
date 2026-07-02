.class public Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;
.super Ljava/lang/Object;
.source "DBBookmarkData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;",
        ">;"
    }
.end annotation


# instance fields
.field public bookAsin:Ljava/lang/String;

.field public bookGuid:Ljava/lang/String;

.field public pageId:I

.field public position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookAsin:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookGuid:Ljava/lang/String;

    .line 92
    iput p3, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    .line 93
    iput p4, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookAsin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookAsin:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookGuid:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookGuid:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    return v0

    .line 129
    :cond_3
    iget v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    iget v1, p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v0

    .line 132
    :cond_4
    iget v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    iget p1, p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 83
    check-cast p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->compareTo(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 98
    check-cast p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->compareTo(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookAsin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x353

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 110
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookGuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 111
    iget v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 112
    iget v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    add-int/2addr v1, v0

    return v1
.end method
