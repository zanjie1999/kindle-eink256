.class public Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;
.super Ljava/lang/Object;
.source "DictionaryInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final asinTag:Ljava/lang/String; = "ASIN"

.field private static final contentDescriptionTag:Ljava/lang/String; = "ContentDescription"

.field private static final dictionaryTag:Ljava/lang/String; = "Dictionary"

.field private static final hiddenTag:Ljava/lang/String; = "Hidden"

.field private static final languageStringTag:Ljava/lang/String; = "LanguageString"

.field private static final languageTag:Ljava/lang/String; = "Language"

.field private static final marketplaceTag:Ljava/lang/String; = "Marketplace"

.field private static final subLanguageTag:Ljava/lang/String; = "SubLanguage"

.field private static final titleTag:Ljava/lang/String; = "Title"


# instance fields
.field public asin:Ljava/lang/String;

.field public contentDescription:Ljava/lang/String;

.field public isHidden:Z

.field public language:Ljava/lang/String;

.field public languageString:Ljava/lang/String;

.field public marketplace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public subLanguage:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->isHidden:Z

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    const-string v2, "Dictionary"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 44
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 46
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->asin:Ljava/lang/String;

    goto/16 :goto_1

    .line 48
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->language:Ljava/lang/String;

    goto/16 :goto_1

    .line 50
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubLanguage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->subLanguage:Ljava/lang/String;

    goto :goto_1

    .line 52
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Marketplace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->marketplace:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanguageString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->languageString:Ljava/lang/String;

    goto :goto_1

    .line 56
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 57
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->title:Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->isHidden:Z

    goto :goto_1

    .line 60
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentDescription"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->contentDescription:Ljava/lang/String;

    .line 41
    :cond_a
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    .line 63
    :cond_b
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag when parsing dictionaries.xml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 82
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryInfo;->TAG:Ljava/lang/String;

    const-string v0, "missing text in dictionaries.xml"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
