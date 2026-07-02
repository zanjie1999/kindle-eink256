.class public final Lcom/amazon/kindle/langdetector/BookLangDetector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/langdetector/BookLangDetector$BookLangDetectorJNI;,
        Lcom/amazon/kindle/langdetector/BookLangDetector$Result;,
        Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;,
        Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;
    }
.end annotation


# instance fields
.field private m_implPtr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/langdetector/LangDetectorError;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/amazon/kindle/langdetector/BookLangDetector$BookLangDetectorJNI;->createDetector(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector;->m_implPtr:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector;->m_implPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/amazon/kindle/langdetector/BookLangDetector$BookLangDetectorJNI;->destroyDetector(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/langdetector/BookLangDetector;->m_implPtr:J

    return-void
.end method

.method public detect(Ljava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/langdetector/LangDetectorError;
        }
    .end annotation

    iget-wide v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector;->m_implPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector;->m_implPtr:J

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/langdetector/BookLangDetector$BookLangDetectorJNI;->detect(JLjava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$Result;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BookLangDetector is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/kindle/langdetector/BookLangDetector;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public mainScriptOfText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/langdetector/LangDetectorError;
        }
    .end annotation

    iget-wide v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector;->m_implPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/langdetector/BookLangDetector;->m_implPtr:J

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/langdetector/BookLangDetector$BookLangDetectorJNI;->mainScriptOfText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BookLangDetector is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
