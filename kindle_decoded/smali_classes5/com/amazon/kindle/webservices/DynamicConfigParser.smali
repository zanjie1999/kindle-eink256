.class public Lcom/amazon/kindle/webservices/DynamicConfigParser;
.super Ljava/lang/Object;
.source "DynamicConfigParser.java"


# static fields
.field private static CONFIG_PAIR_DELIMETER:Ljava/lang/String; = "\n"

.field private static KEY_VALUE_DELIMITER:C = '='

.field private static MULTI_VALUE_DELIMITER:C = ';'

.field private static MULTI_VALUE_END_DELIMETER:C = '}'

.field private static MULTI_VALUE_START_DELIMETER:C = '{'


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static internalParse([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    array-length v3, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, p0, v4

    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 87
    sget-char v6, Lcom/amazon/kindle/webservices/DynamicConfigParser;->KEY_VALUE_DELIMITER:C

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const-string v7, "Improperly formatted line in dynamic config: "

    if-lez v6, :cond_4

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    if-ge v6, v8, :cond_4

    .line 89
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_1

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sget-char v10, Lcom/amazon/kindle/webservices/DynamicConfigParser;->MULTI_VALUE_START_DELIMETER:C

    if-ne v9, v10, :cond_3

    .line 95
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    sget-char v10, Lcom/amazon/kindle/webservices/DynamicConfigParser;->MULTI_VALUE_END_DELIMETER:C

    if-ne v6, v10, :cond_2

    .line 98
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-static {v5}, Lcom/amazon/kindle/webservices/DynamicConfigParser;->parseValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {v5, p1, v8}, Lcom/amazon/kindle/webservices/DynamicConfigParser;->internalParse([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_3
    invoke-interface {p1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 111
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    sget-object v1, Lcom/amazon/kindle/webservices/DynamicConfigParser;->CONFIG_PAIR_DELIMETER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/amazon/kindle/webservices/DynamicConfigParser;->internalParse([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseValue(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 122
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 123
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 124
    sget-char v6, Lcom/amazon/kindle/webservices/DynamicConfigParser;->MULTI_VALUE_START_DELIMETER:C

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    :cond_0
    sget-char v6, Lcom/amazon/kindle/webservices/DynamicConfigParser;->MULTI_VALUE_END_DELIMETER:C

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 129
    :cond_1
    :goto_1
    sget-char v6, Lcom/amazon/kindle/webservices/DynamicConfigParser;->MULTI_VALUE_DELIMITER:C

    if-ne v5, v6, :cond_2

    if-nez v4, :cond_2

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
