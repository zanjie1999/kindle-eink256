.class public Lcom/amazon/sitb/android/services/BookIdParser;
.super Ljava/lang/Object;
.source "BookIdParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/sitb/android/services/BookIdParser$Info;
    }
.end annotation


# static fields
.field private static final ASIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/services/BookIdParser;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/services/BookIdParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v0, "[\\p{Upper}\\p{Digit}]{10}"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/services/BookIdParser;->ASIN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/amazon/sitb/android/services/BookIdParser$Info;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "\\/"

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 28
    :goto_0
    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    .line 31
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    sget-object v0, Lcom/amazon/sitb/android/services/BookIdParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a download ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_1
    return-object v4

    :cond_2
    const/4 v2, 0x1

    .line 39
    aget-object v3, v1, v2

    .line 40
    sget-object v5, Lcom/amazon/sitb/android/services/BookIdParser;->ASIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_4

    .line 43
    invoke-static {}, Lcom/amazon/sitb/android/utils/BuildUtils;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    sget-object v1, Lcom/amazon/sitb/android/services/BookIdParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object v3, v5, v2

    const-string p1, "Download ID does not contain a valid ASIN: id=%s, asin=%s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_3
    return-object v4

    .line 51
    :cond_4
    aget-object p1, v1, v6

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/amazon/sitb/android/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 53
    new-instance v0, Lcom/amazon/sitb/android/services/BookIdParser$Info;

    invoke-direct {v0, v3, p1}, Lcom/amazon/sitb/android/services/BookIdParser$Info;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
