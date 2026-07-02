.class public final Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;
.super Ljava/lang/Object;
.source "DictionaryDefinition.java"


# instance fields
.field private asin:Ljava/lang/String;

.field private contentDescription:Ljava/lang/String;

.field private isHidden:Z

.field private language:Ljava/lang/String;

.field private languageString:Ljava/lang/String;

.field private final marketplace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subLanguage:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->asin:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->language:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->title:Ljava/lang/String;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    .line 27
    iput-boolean p8, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->isHidden:Z

    .line 28
    invoke-direct {p0, p4}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->setMarketplace(Ljava/util/List;)V

    .line 29
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->setSubLanguage(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p5}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->setLanguageString(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p7}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method private setContentDescription(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->contentDescription:Ljava/lang/String;

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->contentDescription:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setLanguageString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->languageString:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->languageString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setMarketplace(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private setSubLanguage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->subLanguage:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->language:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->subLanguage:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .line 36
    instance-of v0, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 38
    iget-object v0, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->asin:Ljava/lang/String;

    .line 39
    iget-object v2, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->language:Ljava/lang/String;

    .line 40
    iget-object v3, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->subLanguage:Ljava/lang/String;

    .line 41
    iget-object v4, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->languageString:Ljava/lang/String;

    .line 42
    iget-object v5, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->title:Ljava/lang/String;

    .line 43
    iget-object v6, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->contentDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 50
    iget-object v7, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->asin:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->language:Ljava/lang/String;

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->subLanguage:Ljava/lang/String;

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->languageString:Ljava/lang/String;

    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->title:Ljava/lang/String;

    .line 55
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->contentDescription:Ljava/lang/String;

    .line 56
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->isHidden:Z

    iget-boolean v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->isHidden:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    :goto_0
    new-instance v1, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;

    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->language:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->subLanguage:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageString()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->languageString:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketplace()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    return-object v0
.end method

.method public getSubLanguage()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->subLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->asin:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isHidden()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->isHidden:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "asin "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " title "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " language "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " subLanguage "

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->subLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " marketplace "

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->marketplace:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
