.class Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;
.super Ljava/lang/Object;
.source "AbstractPreferredDictionaryList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FallbackDictionaryInfo"
.end annotation


# static fields
.field private static final dictionaryAsinTag:Ljava/lang/String; = "Dictionary"

.field private static final fallbackAsinTag:Ljava/lang/String; = "Fallback_ASIN"


# instance fields
.field public asin:Ljava/lang/String;

.field public fallbackAsin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    const-string v1, "Dictionary"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 139
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 140
    invoke-interface {p2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;->asin:Ljava/lang/String;

    goto :goto_1

    .line 141
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fallback_ASIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 142
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;->getText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList$FallbackDictionaryInfo;->fallbackAsin:Ljava/lang/String;

    .line 136
    :cond_3
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    .line 144
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tag when parsing fallback_dictionaries.xml: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 144
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
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

    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 162
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/internal/AbstractPreferredDictionaryList;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "missing text in preferred_dictionaries.xml"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
