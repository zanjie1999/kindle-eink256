.class public Lcom/amazon/sitb/android/cache/cancel/CancelRecordParser;
.super Ljava/lang/Object;
.source "CancelRecordParser.java"

# interfaces
.implements Lcom/amazon/sitb/android/cache/CacheObjectParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
        "Lcom/amazon/sitb/android/CancelRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/cache/cancel/CancelRecordParser;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/cache/cancel/CancelRecordParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/amazon/sitb/android/CancelRecord;
    .locals 4

    .line 22
    :try_start_0
    new-instance v0, Lcom/amazon/sitb/android/CancelRecord;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/amazon/sitb/android/CancelRecord;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 26
    sget-object v1, Lcom/amazon/sitb/android/cache/cancel/CancelRecordParser;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Unable to parse [cancel record cache string : %s]:"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/cache/cancel/CancelRecordParser;->parse(Ljava/lang/String;)Lcom/amazon/sitb/android/CancelRecord;

    move-result-object p1

    return-object p1
.end method
