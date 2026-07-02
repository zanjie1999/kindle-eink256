.class public Lcom/amazon/ebook/util/text/TranslitUtil;
.super Ljava/lang/Object;


# static fields
.field private static final HIRAGANA_BLOCK_BEGIN:I = 0x3041

.field private static final HIRAGANA_BLOCK_END:I = 0x3094

.field private static final HIRAGANA_KATAKANA_OFFSET:I = 0x60

.field private static final KATAKANA_HALFWIDTH_TO_FULLWIDTH_LUT:Ljava/util/Properties;

.field private static LOG:Lcom/amazon/ebook/util/log/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "Failed to close input stream of katakana halfwidth to fullwidth table"

    const-string v1, "TranslitUtil"

    invoke-static {v1}, Lcom/amazon/ebook/util/log/Log;->getInstance(Ljava/lang/String;)Lcom/amazon/ebook/util/log/Log;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/TranslitUtil;->LOG:Lcom/amazon/ebook/util/log/Log;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/amazon/ebook/util/text/TranslitUtil;->KATAKANA_HALFWIDTH_TO_FULLWIDTH_LUT:Ljava/util/Properties;

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/amazon/ebook/util/text/TranslitUtil;

    const-string v3, "katakana_halfwidth_to_fullwidth.txt"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/amazon/ebook/util/text/TranslitUtil;->KATAKANA_HALFWIDTH_TO_FULLWIDTH_LUT:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/amazon/ebook/util/text/TranslitUtil;->LOG:Lcom/amazon/ebook/util/log/Log;

    const-string v4, "Failed to load katakana halfwidth to fullwidth table"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/ebook/util/log/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/amazon/ebook/util/text/TranslitUtil;->LOG:Lcom/amazon/ebook/util/log/Log;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/ebook/util/log/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    sget-object v3, Lcom/amazon/ebook/util/text/TranslitUtil;->LOG:Lcom/amazon/ebook/util/log/Log;

    invoke-virtual {v3, v0, v1}, Lcom/amazon/ebook/util/log/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
