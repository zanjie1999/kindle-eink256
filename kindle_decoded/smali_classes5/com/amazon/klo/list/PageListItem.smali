.class public Lcom/amazon/klo/list/PageListItem;
.super Ljava/lang/Object;
.source "PageListItem.java"


# instance fields
.field private chapterTitle:Ljava/lang/String;

.field private location:I

.field private page:Ljava/lang/String;

.field private termOccurrence:Lcom/amazon/klo/search/TermOccurrence;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "location"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/klo/list/PageListItem;->location:I

    const-string/jumbo v0, "page"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/klo/list/PageListItem;->page:Ljava/lang/String;

    const-string v0, "chapter"

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/list/PageListItem;->chapterTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChapterTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/klo/list/PageListItem;->chapterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/amazon/klo/list/PageListItem;->location:I

    return v0
.end method

.method public getPageLabel()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/klo/list/PageListItem;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getTermOccurrence()Lcom/amazon/klo/search/TermOccurrence;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/klo/list/PageListItem;->termOccurrence:Lcom/amazon/klo/search/TermOccurrence;

    return-object v0
.end method

.method public setTermOccurrence(Lcom/amazon/klo/search/TermOccurrence;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/klo/list/PageListItem;->termOccurrence:Lcom/amazon/klo/search/TermOccurrence;

    return-void
.end method
