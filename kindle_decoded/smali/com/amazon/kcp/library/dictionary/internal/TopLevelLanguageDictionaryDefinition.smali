.class public final Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;
.super Ljava/lang/Object;
.source "TopLevelLanguageDictionaryDefinition.java"


# instance fields
.field private defaultFallBackAsin:Ljava/lang/String;

.field private defaultPreferredAsin:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field public listDictionaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->defaultFallBackAsin:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->defaultPreferredAsin:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->language:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->defaultFallBackAsin:Ljava/lang/String;

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getDefaultAsin()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->defaultPreferredAsin:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->defaultFallBackAsin:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->language:Ljava/lang/String;

    return-object v0
.end method

.method public hasDefaultPreferredAsin()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->defaultPreferredAsin:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDefaultPreferredAsin(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->defaultPreferredAsin:Ljava/lang/String;

    return-void
.end method
