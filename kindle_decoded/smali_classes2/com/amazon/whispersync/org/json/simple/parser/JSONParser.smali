.class public Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field public static final S_END:I = 0x6

.field public static final S_INIT:I = 0x0

.field public static final S_IN_ARRAY:I = 0x3

.field public static final S_IN_ERROR:I = -0x1

.field public static final S_IN_FINISHED_VALUE:I = 0x1

.field public static final S_IN_OBJECT:I = 0x2

.field public static final S_IN_PAIR_VALUE:I = 0x5

.field public static final S_PASSED_PAIR_KEY:I = 0x4


# instance fields
.field private handlerStatusStack:Ljava/util/LinkedList;

.field private lexer:Lcom/amazon/whispersync/org/json/simple/parser/Yylex;

.field private status:I

.field private token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/amazon/whispersync/org/json/simple/parser/Yylex;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/json/simple/parser/Yylex;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->lexer:Lcom/amazon/whispersync/org/json/simple/parser/Yylex;

    .line 35
    iput-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    return-void
.end method

.method private createArrayContainer(Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    .line 286
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/JSONArray;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/json/simple/JSONArray;-><init>()V

    return-object p1

    .line 287
    :cond_0
    invoke-interface {p1}, Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 290
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/JSONArray;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/json/simple/JSONArray;-><init>()V

    :cond_1
    return-object p1
.end method

.method private createObjectContainer(Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/util/Map;
    .locals 0

    if-nez p1, :cond_0

    .line 276
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/json/simple/JSONObject;-><init>()V

    return-object p1

    .line 277
    :cond_0
    invoke-interface {p1}, Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    .line 280
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/json/simple/JSONObject;-><init>()V

    :cond_1
    return-object p1
.end method

.method private nextToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->lexer:Lcom/amazon/whispersync/org/json/simple/parser/Yylex;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/json/simple/parser/Yylex;->yylex()Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    :cond_0
    return-void
.end method

.method private peekStatus(Ljava/util/LinkedList;)I
    .locals 1

    .line 39
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->lexer:Lcom/amazon/whispersync/org/json/simple/parser/Yylex;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/json/simple/parser/Yylex;->getPosition()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 113
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 118
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->nextToken()V

    .line 119
    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_18

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_11

    if-eq v1, v3, :cond_f

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v1, v4, :cond_a

    if-eq v1, v5, :cond_4

    if-eq v1, v7, :cond_0

    goto/16 :goto_1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v1, v1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v5, :cond_1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_15

    .line 211
    iput v2, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 191
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 192
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 194
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->createArrayContainer(Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v6

    .line 195
    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iput v5, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 197
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 201
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 202
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 204
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->createObjectContainer(Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v6

    .line 205
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iput v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 207
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 184
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 185
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 187
    iget-object v5, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v5, v5, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v1, v1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_15

    .line 250
    iput v2, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 224
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 225
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 226
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 227
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 230
    :cond_6
    iput v3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 242
    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 243
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->createArrayContainer(Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v4

    .line 244
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iput v5, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 246
    new-instance v1, Ljava/lang/Integer;

    iget v5, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 234
    :cond_8
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 235
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->createObjectContainer(Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v5

    .line 236
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iput v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 238
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 220
    :cond_9
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 221
    iget-object v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v4, v4, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 149
    :cond_a
    iget-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v1, v1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-eqz v1, :cond_d

    if-eq v1, v4, :cond_b

    if-eq v1, v6, :cond_15

    .line 174
    iput v2, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 164
    :cond_b
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_c

    .line 165
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 167
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 170
    :cond_c
    iput v3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 153
    :cond_d
    iget-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v1, v1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 154
    iget-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v1, v1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 156
    iput v7, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 157
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    :cond_e
    iput v2, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto :goto_1

    .line 143
    :cond_f
    iget-object p1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget p1, p1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-ne p1, v2, :cond_10

    .line 144
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 146
    :cond_10
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 121
    :cond_11
    iget-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v1, v1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-eqz v1, :cond_14

    if-eq v1, v3, :cond_13

    if-eq v1, v5, :cond_12

    .line 138
    iput v2, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto :goto_1

    .line 133
    :cond_12
    iput v5, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 134
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->createArrayContainer(Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 128
    :cond_13
    iput v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 129
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->createObjectContainer(Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 123
    :cond_14
    iput v3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 124
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v1, v1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 256
    :cond_15
    :goto_1
    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    if-eq v1, v2, :cond_17

    .line 259
    iget-object v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v1, v1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v2, :cond_16

    goto/16 :goto_0

    .line 265
    :cond_16
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 257
    :cond_17
    :try_start_1
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 254
    :cond_18
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 262
    throw p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/amazon/whispersync/org/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p2
.end method

.method public parse(Ljava/io/Reader;Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;Z)V

    return-void
.end method

.method public parse(Ljava/io/Reader;Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 332
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    goto :goto_0

    .line 335
    :cond_0
    iget-object p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    if-nez p3, :cond_1

    .line 337
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 338
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 342
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    :goto_1
    const/4 p3, -0x1

    .line 346
    :try_start_0
    iget v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    return-void

    .line 459
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 460
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 461
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 421
    :pswitch_2
    invoke-direct {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->nextToken()V

    .line 422
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_13

    .line 450
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 434
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 435
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 436
    iput v5, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 437
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 438
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 442
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 443
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 444
    iput v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 445
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 446
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 426
    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 427
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 428
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 430
    :cond_5
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 466
    :pswitch_3
    invoke-direct {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->nextToken()V

    .line 467
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_13

    .line 498
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 475
    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 476
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 477
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto :goto_2

    .line 480
    :cond_7
    iput v6, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 482
    :goto_2
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->endArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 492
    :cond_8
    iput v5, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 493
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 494
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 486
    :cond_9
    iput v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 487
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 488
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 471
    :cond_a
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 387
    :pswitch_4
    invoke-direct {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->nextToken()V

    .line 388
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_13

    .line 415
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 404
    :cond_b
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_c

    .line 405
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 406
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto :goto_3

    .line 409
    :cond_c
    iput v6, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 411
    :goto_3
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->endObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 392
    :cond_d
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 393
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 394
    iput v2, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 395
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 396
    invoke-interface {p2, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->startObjectEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 400
    :cond_e
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 375
    :pswitch_5
    invoke-direct {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->nextToken()V

    .line 376
    iget-object p1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget p1, p1, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-ne p1, p3, :cond_f

    .line 377
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->endJSON()V

    .line 378
    iput v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    return-void

    .line 382
    :cond_f
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 383
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 348
    :pswitch_6
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->startJSON()V

    .line 349
    invoke-direct {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->nextToken()V

    .line 350
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I

    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_11

    if-eq v0, v5, :cond_10

    .line 370
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    goto :goto_4

    .line 364
    :cond_10
    iput v5, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 365
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 366
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 358
    :cond_11
    iput v4, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 359
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 360
    invoke-interface {p2}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 352
    :cond_12
    iput v6, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 353
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget-object v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 506
    :pswitch_7
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 508
    :cond_13
    :goto_4
    iget v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    if-eq v0, p3, :cond_15

    .line 511
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    iget v0, v0, Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;->type:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/amazon/whispersync/org/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, p3, :cond_14

    goto/16 :goto_1

    .line 530
    :cond_14
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 531
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    invoke-direct {p1, p2, v6, p3}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 509
    :cond_15
    :try_start_1
    new-instance p1, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/amazon/whispersync/org/json/simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 526
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 527
    throw p1

    :catch_1
    move-exception p1

    .line 522
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 523
    throw p1

    :catch_2
    move-exception p1

    .line 518
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 519
    throw p1

    :catch_3
    move-exception p1

    .line 514
    iput p3, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 515
    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;Z)V

    return-void
.end method

.method public parse(Ljava/lang/String;Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/json/simple/parser/ParseException;
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 301
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/amazon/whispersync/org/json/simple/parser/ContentHandler;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 307
    new-instance p2, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;

    const/4 p3, -0x1

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p2
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->token:Lcom/amazon/whispersync/org/json/simple/parser/Yytoken;

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->status:I

    .line 52
    iput-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    return-void
.end method

.method public reset(Ljava/io/Reader;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->lexer:Lcom/amazon/whispersync/org/json/simple/parser/Yylex;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/json/simple/parser/Yylex;->yyreset(Ljava/io/Reader;)V

    .line 64
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->reset()V

    return-void
.end method
