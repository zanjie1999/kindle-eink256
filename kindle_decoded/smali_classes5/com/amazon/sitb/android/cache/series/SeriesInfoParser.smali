.class public Lcom/amazon/sitb/android/cache/series/SeriesInfoParser;
.super Ljava/lang/Object;
.source "SeriesInfoParser.java"

# interfaces
.implements Lcom/amazon/sitb/android/cache/CacheObjectParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
        "Lcom/amazon/sitb/android/SeriesInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/cache/series/SeriesInfoParser;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/cache/series/SeriesInfoParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/amazon/sitb/android/SeriesInfo;
    .locals 16

    move-object/from16 v1, p1

    const-string v2, "Unable to parse [series cache string : %s]: %s"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    const-string v0, "@@"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 31
    aget-object v8, v0, v5

    .line 32
    aget-object v9, v0, v4

    const/4 v7, 0x3

    .line 33
    aget-object v10, v0, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x4

    .line 34
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 35
    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 37
    new-instance v0, Lcom/amazon/sitb/android/SeriesInfo;

    move-object v7, v0

    move-wide v11, v12

    move-wide v13, v14

    invoke-direct/range {v7 .. v14}, Lcom/amazon/sitb/android/SeriesInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 46
    sget-object v7, Lcom/amazon/sitb/android/cache/series/SeriesInfoParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_1
    move-exception v0

    .line 41
    sget-object v7, Lcom/amazon/sitb/android/cache/series/SeriesInfoParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/series/SeriesInfoParser;->parse(Ljava/lang/String;)Lcom/amazon/sitb/android/SeriesInfo;

    move-result-object p1

    return-object p1
.end method
