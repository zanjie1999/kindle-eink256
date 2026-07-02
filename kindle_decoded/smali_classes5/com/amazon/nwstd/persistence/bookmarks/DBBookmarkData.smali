.class public Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;
.super Ljava/lang/Object;
.source "DBBookmarkData.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONST:I = 0x17

.field private static final PRIME:I = 0x25


# instance fields
.field private articleTitle:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    invoke-direct {v0, p1, p2, p5, p6}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    .line 17
    iput-object p3, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->articleTitle:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget-object v2, p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget-object p1, p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    invoke-virtual {v1, p1}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->compareTo(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;)I

    move-result p1

    if-gez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->compareTo(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;)I

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

    .line 23
    check-cast p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->compareTo(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getArticleTitle()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->articleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBookAsin()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget-object v0, v0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookGuid()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget-object v0, v0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget v0, v0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget v0, v0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->key:Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    invoke-virtual {v0}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->hashCode()I

    move-result v0

    const/16 v1, 0x353

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 30
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->articleTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 31
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
