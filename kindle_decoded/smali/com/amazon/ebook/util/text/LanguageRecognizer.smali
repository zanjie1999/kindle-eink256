.class public Lcom/amazon/ebook/util/text/LanguageRecognizer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ebook/util/text/LanguageRecognizer$Result;,
        Lcom/amazon/ebook/util/text/LanguageRecognizer$Recognizer;
    }
.end annotation


# static fields
.field private static final recognizers:Ljava/util/Map;


# instance fields
.field private limit:I

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/ArabicRecognizer;

    const-string v2, "ar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/CzechRecognizer;

    const-string v2, "cs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/DutchRecognizer;

    const-string/jumbo v2, "nl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/DanishRecognizer;

    const-string v2, "da"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/EnglishRecognizer;

    const-string v2, "en"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/FinnishRecognizer;

    const-string v2, "fi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/FrenchRecognizer;

    const-string v2, "fr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/GermanRecognizer;

    const-string v2, "de"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/GreekRecognizer;

    const-string v2, "el"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/HebrewRecognizer;

    const-string v2, "he"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/HungarianRecognizer;

    const-string v2, "hu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/ItalianRecognizer;

    const-string v2, "it"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/JapaneseRecognizer;

    const-string v2, "ja"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/KoreanRecognizer;

    const-string v2, "ko"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/NorwegianRecognizer;

    const-string/jumbo v2, "no"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/PolishRecognizer;

    const-string/jumbo v2, "pl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/PortugueseRecognizer;

    const-string/jumbo v2, "pt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/RomanianRecognizer;

    const-string/jumbo v2, "ro"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/RussianRecognizer;

    const-string/jumbo v2, "ru"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/SimplifiedChineseRecognizer;

    const-string/jumbo v2, "zh-Hans"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/SpanishRecognizer;

    const-string v2, "es"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/SwedishRecognizer;

    const-string/jumbo v2, "sv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/TraditionalChineseRecognizer;

    const-string/jumbo v2, "zh-Hant"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->recognizers:Ljava/util/Map;

    const-class v1, Lcom/amazon/ebook/util/text/recognizer/TurkishRecognizer;

    const-string/jumbo v2, "tr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/amazon/ebook/util/text/LanguageRecognizer;->limit:I

    return-void
.end method
