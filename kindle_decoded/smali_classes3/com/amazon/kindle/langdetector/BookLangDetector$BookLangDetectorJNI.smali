.class final Lcom/amazon/kindle/langdetector/BookLangDetector$BookLangDetectorJNI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/langdetector/BookLangDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BookLangDetectorJNI"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native createDetector(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/langdetector/LangDetectorError;
        }
    .end annotation
.end method

.method static native destroyDetector(J)V
.end method

.method static native detect(JLjava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/langdetector/LangDetectorError;
        }
    .end annotation
.end method

.method static native mainScriptOfText(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/langdetector/LangDetectorError;
        }
    .end annotation
.end method
