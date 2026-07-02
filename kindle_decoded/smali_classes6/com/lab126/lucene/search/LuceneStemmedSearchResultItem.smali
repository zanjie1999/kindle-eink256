.class public Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;
.super Ljava/lang/Object;
.source "LuceneStemmedSearchResultItem.java"


# instance fields
.field private matchLocationsList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->word:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->matchLocationsList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addMatchLocation(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->matchLocationsList:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMatchCount()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->matchLocationsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getMatchLocationsList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->matchLocationsList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/lab126/lucene/search/LuceneStemmedSearchResultItem;->word:Ljava/lang/String;

    return-object v0
.end method
