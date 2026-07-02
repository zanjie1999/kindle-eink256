.class public Lcom/amazon/kcp/wordwise/gloss/GlossModel;
.super Ljava/lang/Object;
.source "GlossModel.java"

# interfaces
.implements Lcom/amazon/kcp/wordwise/gloss/IGlossModel;


# instance fields
.field private dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

.field private knownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

.field private override:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

.field private settings:Lcom/amazon/kcp/wordwise/language/ILanguageSettings;

.field private sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/wordwise/language/ILanguageSettings;Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Lcom/amazon/kcp/wordwise/language/LanguageSettingsImpl;

    invoke-direct {p1}, Lcom/amazon/kcp/wordwise/language/LanguageSettingsImpl;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->settings:Lcom/amazon/kcp/wordwise/language/ILanguageSettings;

    if-eqz p2, :cond_1

    .line 36
    invoke-interface {p2}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->getGlossDictionary()Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    .line 37
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    .line 38
    iput-object p3, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->override:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    .line 39
    iput-object p4, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->knownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    return-void
.end method


# virtual methods
.method public applyOverride(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->override:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;->addGlossOverride(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)V

    .line 104
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDecorationProvider()Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->close()V

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->close()V

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->override:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;->close()V

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->knownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;->close()V

    return-void
.end method

.method public getAcr()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->getAcr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    return-object v0
.end method

.method public getDictionaryId()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDictionaryMaxTermLength()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getMaxTermLength()I

    move-result v0

    return v0
.end method

.method public getDictionaryRevision()Ljava/lang/Integer;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getRevision()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDictionaryTermTerminatorList()Ljava/util/List;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getTermTerminatorList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDictionaryTokenSeparator()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getTokenSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlosses(IILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-interface {p3}, Ljava/util/Map;->clear()V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->getSidecarEntriesBetween(II)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 71
    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->override:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    invoke-interface {v0, p3, p1, p2}, Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;->overrideSenses(Ljava/util/Map;II)V

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->knownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;->suppressSenses(Ljava/util/Collection;)V

    return-void
.end method

.method public getSidecarBookRevision()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->getSidecarBookRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSidecarRevision()Ljava/lang/Integer;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->getSidecarRevision()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarWords(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getSimilarWords(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getWordSenses(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getWordSenses(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public isValid()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->override:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->knownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->open()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->sidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->open()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->override:Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;->open()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->knownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public suppressSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/gloss/GlossModel;->knownSense:Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;->addKnownSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    .line 118
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getWordWiseDecorationProvider()Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->clearDecorationCache()V

    :cond_0
    return-void
.end method
