.class public final Lcom/amazon/kcp/translation/Language;
.super Ljava/lang/Object;
.source "Language.java"


# instance fields
.field private final m_displayName:Ljava/lang/String;

.field private final m_isDetecting:Z

.field private final m_languageTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/translation/Language;->m_displayName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/translation/Language;->m_languageTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kcp/translation/Language;->m_isDetecting:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/translation/Language;->m_displayName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amazon/kcp/translation/Language;->m_languageTag:Ljava/lang/String;

    .line 44
    iput-boolean p3, p0, Lcom/amazon/kcp/translation/Language;->m_isDetecting:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 101
    instance-of v0, p1, Lcom/amazon/kcp/translation/Language;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lcom/amazon/kcp/translation/Language;

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kcp/translation/Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/translation/Language;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/translation/Language;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/translation/Language;->m_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/translation/Language;->m_languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/translation/Language;->m_displayName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x11

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x11

    .line 88
    iget-object v3, p0, Lcom/amazon/kcp/translation/Language;->m_languageTag:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x11

    .line 89
    iget-boolean v1, p0, Lcom/amazon/kcp/translation/Language;->m_isDetecting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDetecting()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/amazon/kcp/translation/Language;->m_isDetecting:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/translation/Language;->m_displayName:Ljava/lang/String;

    return-object v0
.end method
