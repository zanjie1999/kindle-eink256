.class public Lcom/amazon/phl/parser/SaxSidecarParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SaxSidecarParserHandler.java"


# static fields
.field private static final ANNOTATION_ATTRIBUTE_CREATED_TIMESTAMP:Ljava/lang/String; = "created_timestamp"

.field private static final ANNOTATION_ATTRIBUTE_END_POS:Ljava/lang/String; = "end_pos"

.field private static final ANNOTATION_ATTRIBUTE_EXPECTED_TYPE:Ljava/lang/String; = "popular_highlight"

.field private static final ANNOTATION_ATTRIBUTE_MODIFIED_TIMESTAMP:Ljava/lang/String; = "modified_timestamp"

.field private static final ANNOTATION_ATTRIBUTE_NUM_USERS:Ljava/lang/String; = "num_users"

.field private static final ANNOTATION_ATTRIBUTE_START_POS:Ljava/lang/String; = "start_pos"

.field private static final ANNOTATION_ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field private static final CONTENT_ATTRIBUTE_GUID:Ljava/lang/String; = "guid"

.field private static final CONTENT_ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final CONTENT_ATTRIBUTE_TYPE:Ljava/lang/String; = "type"

.field private static final POPULAR_ATTRIBUTE_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final POPULAR_TAG:Ljava/lang/String; = "popular"

.field private static final SIDECAR_DATE_FORMAT:Ljava/text/DateFormat;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ANNOTATION:Ljava/lang/String; = "annotation"

.field private static final TAG_CONTENT:Ljava/lang/String; = "content"


# instance fields
.field private asin:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private phls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/phl/model/PopularHighlight;",
            ">;"
        }
    .end annotation
.end field

.field private sidecarResult:Lcom/amazon/phl/model/Sidecar;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const-class v0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->SIDECAR_DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->contentType:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->asin:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->guid:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->phls:Ljava/util/List;

    return-void
.end method

.method private parsePHLAnnotation(Lorg/xml/sax/Attributes;)Lcom/amazon/phl/model/PopularHighlight;
    .locals 13

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-wide v8, v0

    move-wide v10, v8

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_0
    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 123
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "type"

    .line 125
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v0, "popular_highlight"

    .line 126
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 129
    :cond_0
    sget-object p1, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected annotation type.  Expected popular_highlight but found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/phl/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string/jumbo v12, "start_pos"

    .line 133
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_2
    const-string v12, "end_pos"

    .line 135
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_3
    const-string v12, "num_users"

    .line 137
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    goto :goto_1

    :cond_4
    const-string v12, "created_timestamp"

    .line 139
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 140
    sget-object v3, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->SIDECAR_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-wide v8, v3

    goto :goto_1

    :cond_5
    const-string v12, "modified_timestamp"

    .line 141
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 142
    sget-object v3, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->SIDECAR_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-wide v10, v3

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v0, :cond_8

    .line 146
    sget-object p1, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->TAG:Ljava/lang/String;

    const-string v0, "Annotation xml did not include type, which is required with value popular_highlight"

    invoke-static {p1, v0}, Lcom/amazon/phl/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 150
    :cond_8
    new-instance p1, Lcom/amazon/phl/model/PopularHighlight;

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/amazon/phl/model/PopularHighlight;-><init>(IIIJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    sget-object v0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->TAG:Ljava/lang/String;

    const-string v2, "Failure parsing popular highlight annotation"

    invoke-static {v0, v2, p1}, Lcom/amazon/phl/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private setContentAttributesAndValidate(Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/phl/parser/SaxSidecarParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 167
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "guid"

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iput-object v2, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->guid:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "type"

    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    iput-object v2, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->contentType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, "key"

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iput-object v2, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->asin:Ljava/lang/String;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->guid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 178
    :cond_4
    new-instance p1, Lcom/amazon/phl/parser/SaxSidecarParserException;

    const-string v0, "Missing guid or asin"

    invoke-direct {p1, v0}, Lcom/amazon/phl/parser/SaxSidecarParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validatePopularHeader(Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/phl/parser/SaxSidecarParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 192
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    sget-object v1, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->SIDECAR_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->timestamp:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 198
    new-instance v0, Lcom/amazon/phl/parser/SaxSidecarParserException;

    const-string v1, "Error parsing header\'s timestamp"

    invoke-direct {v0, v1, p1}, Lcom/amazon/phl/parser/SaxSidecarParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/phl/parser/SaxSidecarParserException;
        }
    .end annotation

    .line 62
    :try_start_0
    new-instance v7, Lcom/amazon/phl/model/Sidecar;

    iget-object v1, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->contentType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->timestamp:J

    iget-object v6, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->phls:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/phl/model/Sidecar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    iput-object v7, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->sidecarResult:Lcom/amazon/phl/model/Sidecar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/amazon/phl/parser/SaxSidecarParserException;

    const-string v2, "Exception creating sidecar"

    invoke-direct {v1, v2, v0}, Lcom/amazon/phl/parser/SaxSidecarParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSidecar()Lcom/amazon/phl/model/Sidecar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/phl/parser/SaxSidecarParserException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->sidecarResult:Lcom/amazon/phl/model/Sidecar;

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/amazon/phl/parser/SaxSidecarParserException;

    const-string v1, "Sidecar is null"

    invoke-direct {v0, v1}, Lcom/amazon/phl/parser/SaxSidecarParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/phl/parser/SaxSidecarParserException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->phls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->contentType:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->asin:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->guid:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->timestamp:J

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p2, p3

    :cond_0
    const-string/jumbo p1, "popular"

    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-direct {p0, p4}, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->validatePopularHeader(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_1
    const-string p1, "content"

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    invoke-direct {p0, p4}, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->setContentAttributesAndValidate(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_2
    const-string p1, "annotation"

    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    invoke-direct {p0, p4}, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->parsePHLAnnotation(Lorg/xml/sax/Attributes;)Lcom/amazon/phl/model/PopularHighlight;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 101
    iget-object p2, p0, Lcom/amazon/phl/parser/SaxSidecarParserHandler;->phls:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method
