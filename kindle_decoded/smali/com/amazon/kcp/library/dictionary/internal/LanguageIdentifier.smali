.class public Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;
.super Ljava/lang/Object;
.source "LanguageIdentifier.java"


# instance fields
.field private final lang:Ljava/lang/String;

.field private final marketplace:Ljava/lang/String;

.field private final subLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->lang:Ljava/lang/String;

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    .line 50
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->subLang:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_0
    iput-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->subLang:Ljava/lang/String;

    .line 55
    :goto_0
    array-length v0, p1

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    .line 56
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->marketplace:Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->marketplace:Ljava/lang/String;

    :goto_1
    return-void

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting non-empty language code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "If you provide a marketplace, a sub-language must accompany it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->lang:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->subLang:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->marketplace:Ljava/lang/String;

    return-void

    .line 20
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expecting non-empty language: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->lang:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->hasSubLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->subLang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->hasMarketplace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->marketplace:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMarketplace()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->marketplace:Ljava/lang/String;

    return-object v0
.end method

.method public getSubLanguage()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->subLang:Ljava/lang/String;

    return-object v0
.end method

.method public hasMarketplace()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->marketplace:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubLanguage()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/LanguageIdentifier;->subLang:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
