.class public final Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/langdetector/BookLangDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageConfidence"
.end annotation


# instance fields
.field public final confidence:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

.field public final language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;->language:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/langdetector/BookLangDetector$LanguageConfidence;->confidence:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    return-void
.end method
