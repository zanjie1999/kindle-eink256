.class public final Lcom/amazon/kindle/langdetector/BookLangDetector$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/langdetector/BookLangDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final m_scripts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector$Result;->m_scripts:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public languageConfidenceForScript(Ljava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector$Result;->m_scripts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;

    return-object p1
.end method

.method public mainLanguageConfidence()Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;
    .locals 1

    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/langdetector/BookLangDetector$Result;->languageConfidenceForScript(Ljava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;

    move-result-object v0

    return-object v0
.end method

.method public scripts()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector$Result;->m_scripts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method setResult(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;)V
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector$Result;->m_scripts:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;

    invoke-direct {v1, p2, p3}, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;-><init>(Ljava/lang/String;Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
