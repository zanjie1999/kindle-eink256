.class public Lcom/amazon/sitb/android/cache/price/BookPriceParser;
.super Ljava/lang/Object;
.source "BookPriceParser.java"

# interfaces
.implements Lcom/amazon/sitb/android/cache/CacheObjectParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
        "Lcom/amazon/sitb/android/BookPrice;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/cache/price/BookPriceParser;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/cache/price/BookPriceParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/amazon/sitb/android/BookPrice;
    .locals 32

    move-object/from16 v1, p1

    const-string v2, "Unable to parse [book price cache string : %s]:"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    const-string v0, "@@"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    aget-object v6, v0, v4

    const/4 v7, 0x2

    .line 35
    aget-object v8, v0, v5

    const/4 v9, 0x3

    .line 36
    aget-object v7, v0, v7

    const/4 v10, 0x4

    .line 37
    aget-object v9, v0, v9

    const/4 v11, 0x5

    .line 38
    aget-object v10, v0, v10

    const/4 v12, 0x6

    .line 39
    aget-object v11, v0, v11

    const/4 v13, 0x7

    .line 40
    aget-object v12, v0, v12

    const/16 v14, 0x8

    .line 41
    aget-object v13, v0, v13

    const/16 v15, 0x9

    .line 42
    aget-object v14, v0, v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    const/16 v14, 0xa

    .line 43
    aget-object v15, v0, v15

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v26

    const/16 v15, 0xb

    .line 44
    aget-object v14, v0, v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    const/16 v14, 0xc

    .line 45
    aget-object v15, v0, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 46
    aget-object v0, v0, v14

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 48
    new-instance v0, Lcom/amazon/sitb/android/BookPrice;

    invoke-static {v6}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v17, v3

    goto :goto_0

    :cond_1
    new-instance v14, Ljava/math/BigDecimal;

    invoke-direct {v14, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v14

    .line 49
    :goto_0
    invoke-static {v8}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v18, v3

    goto :goto_1

    :cond_2
    move-object/from16 v18, v8

    .line 50
    :goto_1
    invoke-static {v7}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v19, v3

    goto :goto_2

    :cond_3
    move-object/from16 v19, v7

    .line 51
    :goto_2
    invoke-static {v9}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v20, v3

    goto :goto_3

    :cond_4
    move-object/from16 v20, v9

    .line 52
    :goto_3
    invoke-static {v10}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v21, v3

    goto :goto_4

    :cond_5
    move-object/from16 v21, v10

    .line 53
    :goto_4
    invoke-static {v11}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v22, v3

    goto :goto_5

    :cond_6
    move-object/from16 v22, v11

    .line 54
    :goto_5
    invoke-static {v12}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v23, v3

    goto :goto_6

    :cond_7
    move-object/from16 v23, v12

    .line 55
    :goto_6
    invoke-static {v13}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v24, v3

    goto :goto_7

    :cond_8
    move-object/from16 v24, v13

    :goto_7
    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v31}, Lcom/amazon/sitb/android/BookPrice;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZJJ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    sget-object v6, Lcom/amazon/sitb/android/cache/price/BookPriceParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_1
    move-exception v0

    .line 64
    sget-object v6, Lcom/amazon/sitb/android/cache/price/BookPriceParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/price/BookPriceParser;->parse(Ljava/lang/String;)Lcom/amazon/sitb/android/BookPrice;

    move-result-object p1

    return-object p1
.end method
