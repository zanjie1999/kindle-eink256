.class public Lcom/amazon/bookwizard/data/Recommendation;
.super Ljava/lang/Object;
.source "Recommendation.java"


# instance fields
.field private final book:Lcom/amazon/bookwizard/data/Book;

.field private final rec:Lcom/amazon/bookwizard/service/PayoffRec;

.field private final type:I


# direct methods
.method public constructor <init>(Lcom/amazon/bookwizard/data/Book;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    .line 45
    iput p2, p0, Lcom/amazon/bookwizard/data/Recommendation;->type:I

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/bookwizard/service/PayoffRec;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    .line 59
    iput-object p1, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/amazon/bookwizard/data/Recommendation;->type:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 161
    instance-of v0, p1, Lcom/amazon/bookwizard/data/Recommendation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    move-object v1, p1

    check-cast v1, Lcom/amazon/bookwizard/data/Recommendation;

    iget-object v1, v1, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/data/Book;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/amazon/bookwizard/service/PayoffRec;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    .line 162
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/PayoffRec;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffRec;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBook()Lcom/amazon/bookwizard/data/Book;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/PayoffRec;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/bookwizard/data/DataProvider;->getBook(Ljava/lang/String;)Lcom/amazon/bookwizard/data/Book;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/PayoffRec;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/PayoffRec;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Book;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/PayoffRec;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/Recommendation;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/Recommendation;->getType()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/Book;->getRecommendationReason()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getType()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 151
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/PayoffRec;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 153
    iget-object v2, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    invoke-virtual {v2}, Lcom/amazon/bookwizard/data/Book;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isKu()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/amazon/bookwizard/data/Recommendation;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDownloadClicked(Lcom/amazon/bookwizard/data/DataProvider;Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->rec:Lcom/amazon/bookwizard/service/PayoffRec;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/data/DataProvider;->markForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/data/DataProvider;->unmarkForDownload(Lcom/amazon/bookwizard/service/PayoffRec;)V

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/data/Recommendation;->book:Lcom/amazon/bookwizard/data/Book;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/data/DataProvider;->markForDownload(Lcom/amazon/bookwizard/data/Recommendation;)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {p1, p0}, Lcom/amazon/bookwizard/data/DataProvider;->unmarkForDownload(Lcom/amazon/bookwizard/data/Recommendation;)V

    :cond_3
    :goto_1
    return-void
.end method
