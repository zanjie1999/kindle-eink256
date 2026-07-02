.class public abstract Lcom/amazon/android/docviewer/BookSearchResult;
.super Ljava/lang/Object;
.source "BookSearchResult.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IGoto;


# instance fields
.field private final location:I

.field private final matchLength:I

.field private final matchOffset:I

.field private final position:I

.field private final searchEndPosition:I

.field private final searchStartPosition:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/android/docviewer/BookSearchResult;->text:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/amazon/android/docviewer/BookSearchResult;->matchOffset:I

    .line 31
    iput p3, p0, Lcom/amazon/android/docviewer/BookSearchResult;->matchLength:I

    .line 32
    iput p4, p0, Lcom/amazon/android/docviewer/BookSearchResult;->position:I

    .line 33
    iput p5, p0, Lcom/amazon/android/docviewer/BookSearchResult;->searchStartPosition:I

    .line 34
    iput p6, p0, Lcom/amazon/android/docviewer/BookSearchResult;->searchEndPosition:I

    .line 35
    iput p7, p0, Lcom/amazon/android/docviewer/BookSearchResult;->location:I

    return-void
.end method


# virtual methods
.method public getLocation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    iget v0, p0, Lcom/amazon/android/docviewer/BookSearchResult;->location:I

    return v0
.end method

.method public getMatchLength()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/amazon/android/docviewer/BookSearchResult;->matchLength:I

    return v0
.end method

.method public getMatchOffset()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/amazon/android/docviewer/BookSearchResult;->matchOffset:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/amazon/android/docviewer/BookSearchResult;->position:I

    return v0
.end method

.method public getSearchEndPosition()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/amazon/android/docviewer/BookSearchResult;->searchEndPosition:I

    return v0
.end method

.method public getSearchStartPosition()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/amazon/android/docviewer/BookSearchResult;->searchStartPosition:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/android/docviewer/BookSearchResult;->text:Ljava/lang/String;

    return-object v0
.end method
