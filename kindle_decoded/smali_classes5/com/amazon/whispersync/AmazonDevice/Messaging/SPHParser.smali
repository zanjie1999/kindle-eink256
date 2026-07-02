.class public Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;
.super Ljava/lang/Object;
.source "SPHParser.java"


# static fields
.field private static final HOURS_PER_DAY:J

.field private static final MINUTE_PER_HOUR:J

.field private static final SECS_PER_MINUTE:J


# instance fields
.field private mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

.field private mSchedule:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;

.field private final mXmlParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->HOURS_PER_DAY:J

    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->MINUTE_PER_HOUR:J

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->SECS_PER_MINUTE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mXmlParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    .line 30
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorNone:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-void
.end method

.method private getTimeSecs(Ljava/lang/String;)J
    .locals 13

    const-string v0, ":"

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 181
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    array-length v0, p1

    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 187
    aget-object v5, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    .line 188
    aget-object v6, p1, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 193
    array-length v7, p1

    if-ne v7, v4, :cond_1

    .line 195
    aget-object p1, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    int-to-long v3, v5

    .line 198
    sget-wide v7, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->HOURS_PER_DAY:J

    cmp-long p1, v3, v7

    if-gez p1, :cond_3

    int-to-long v5, v6

    sget-wide v7, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->MINUTE_PER_HOUR:J

    cmp-long p1, v5, v7

    if-gez p1, :cond_3

    int-to-long v9, v0

    sget-wide v11, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->SECS_PER_MINUTE:J

    cmp-long p1, v9, v11

    if-ltz p1, :cond_2

    goto :goto_0

    .line 204
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->signum(J)I

    mul-long v3, v3, v7

    add-long/2addr v3, v5

    mul-long v3, v3, v11

    add-long/2addr v3, v9

    return-wide v3

    .line 200
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorTimeFormat:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-wide v1

    .line 183
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorTimeFormat:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-wide v1
.end method

.method private isValidDayValue(Ljava/lang/Integer;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x20

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parseSPHItems(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;
    .locals 11

    .line 74
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 76
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPH_Schedule"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 82
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;

    invoke-direct {v1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;-><init>()V

    const-string/jumbo v2, "version"

    .line 84
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 85
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 90
    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_3

    .line 92
    aget-object v2, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 93
    aget-object v4, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 94
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->setMajorSPHVersionNum(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v1, v4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->setMinorSPHVersionNum(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 99
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 100
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->setMajorSPHVersionNum(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :goto_2
    if-nez v2, :cond_4

    new-array p1, v8, [Ljava/lang/Object;

    const-string/jumbo v1, "parseSPHItems: SPH version is not supported."

    .line 105
    invoke-static {v1, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorSPHVersionUnsupported:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-object v0

    :cond_4
    const-string/jumbo v2, "one-shot"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->setIsRegular(Z)V

    .line 112
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v2, 0x0

    .line 114
    :goto_3
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 116
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 118
    new-instance v4, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;

    invoke-direct {v4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;-><init>()V

    .line 120
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v5, 0x0

    .line 122
    :goto_4
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 124
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 125
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-eq v9, v7, :cond_5

    goto :goto_6

    .line 130
    :cond_5
    check-cast v6, Lorg/w3c/dom/Element;

    .line 132
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 133
    invoke-static {v6}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "day"

    .line 135
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "d"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    const-string/jumbo v10, "time"

    .line 155
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "t"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 157
    :cond_7
    invoke-direct {p0, v6}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->getTimeSecs(Ljava/lang/String;)J

    move-result-wide v9

    .line 158
    invoke-virtual {v4, v9, v10}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->addTime(J)V

    goto :goto_6

    .line 137
    :cond_8
    :goto_5
    invoke-static {v6}, Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;->getDayOfWeek(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 140
    invoke-virtual {v4, v9}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->addDayOfWeek(Lcom/amazon/whispersync/AmazonDevice/Messaging/DayOfWeek;)V

    goto :goto_6

    .line 144
    :cond_9
    invoke-static {v6, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    .line 145
    invoke-direct {p0, v9}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->isValidDayValue(Ljava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 147
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->addDayOfMonth(I)V

    goto :goto_6

    :cond_a
    new-array v9, v7, [Ljava/lang/Object;

    aput-object v6, v9, v8

    const-string/jumbo v6, "parseSPHItems: day value %s is invalid."

    .line 151
    invoke-static {v6, v9}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 162
    :cond_c
    invoke-virtual {v4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;->isValidSchedule()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 164
    invoke-virtual {v1, v4}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;->addSPHItem(Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHItem;)V

    goto :goto_7

    :cond_d
    new-array v3, v7, [Ljava/lang/Object;

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const-string/jumbo v4, "parseSPHItems: Schedule item #%d is invalid, skipping it."

    invoke-static {v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_e
    return-object v1

    .line 78
    :cond_f
    :goto_8
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorNoSchedule:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-object v0
.end method


# virtual methods
.method public getParseError()Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->parseNode(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mSchedule:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;

    return-object p1
.end method

.method public parseNode(Ljava/lang/String;)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 44
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mXmlParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    array-length v2, p1

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseChunk([BJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-object v0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mXmlParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseEndOfDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->parseSPHItems(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHSchedule;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parse: Parse failed because of an unsupported encoding problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    .line 63
    :cond_1
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;->SPHParserErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParser;->mError:Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHParserError;

    return-object v0
.end method
