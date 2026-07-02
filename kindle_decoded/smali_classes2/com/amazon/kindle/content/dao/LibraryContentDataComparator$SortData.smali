.class public Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;
.super Ljava/lang/Object;
.source "LibraryContentDataComparator.java"


# instance fields
.field authorOrder:J

.field authorOrderReversed:J

.field bookId:Ljava/lang/String;

.field publicationDate:J

.field sortableAuthor:Ljava/lang/String;

.field sortableTitle:Ljava/lang/String;

.field titleOrder:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->publicationDate:J

    .line 49
    iput-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->titleOrder:J

    .line 50
    iput-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrder:J

    .line 51
    iput-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrderReversed:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->publicationDate:J

    .line 49
    iput-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->titleOrder:J

    .line 50
    iput-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrder:J

    .line 51
    iput-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrderReversed:J

    .line 58
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableTitle:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableAuthor:Ljava/lang/String;

    .line 61
    iput-wide p4, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->publicationDate:J

    .line 62
    iput-wide p6, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->titleOrder:J

    .line 63
    iput-wide p8, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrder:J

    .line 64
    iput-wide p10, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->authorOrderReversed:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 95
    instance-of v0, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;

    iget-object p1, p1, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPublicationDate()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->publicationDate:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->bookId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDataComparator$SortData;->sortableAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
