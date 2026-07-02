.class public Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;
.super Ljava/lang/Object;
.source "ObjectRestoreHeaderHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/services/s3/internal/HeaderHandler<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final ONGOING_PATTERN:Ljava/util/regex/Pattern;

.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "expiry-date=\"(.*?)\""

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->DATE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "ongoing-request=\"(.*?)\""

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->ONGOING_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    const-class v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;

    .line 45
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->ONGOING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 66
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 70
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServiceUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v1, "Error parsing expiry-date from x-amz-restore header."

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v0, "x-amz-restore"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 57
    invoke-direct {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreResult;->setRestoreExpirationTime(Ljava/util/Date;)V

    .line 58
    invoke-direct {p0, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreResult;->setOngoingRestore(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler;->handle(Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ObjectRestoreResult;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V

    return-void
.end method
