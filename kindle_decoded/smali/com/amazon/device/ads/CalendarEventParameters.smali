.class Lcom/amazon/device/ads/CalendarEventParameters;
.super Ljava/lang/Object;
.source "CalendarEventParameters.java"


# static fields
.field public static final DATE_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private end:Ljava/util/Date;

.field private location:Ljava/lang/String;

.field private start:Ljava/util/Date;

.field private summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/device/ads/CalendarEventParameters$1;

    invoke-direct {v0}, Lcom/amazon/device/ads/CalendarEventParameters$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/CalendarEventParameters;->DATE_FORMATS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    iput-object p1, p0, Lcom/amazon/device/ads/CalendarEventParameters;->description:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/amazon/device/ads/CalendarEventParameters;->location:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/amazon/device/ads/CalendarEventParameters;->summary:Ljava/lang/String;

    .line 78
    invoke-static {p4}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 84
    invoke-direct {p0, p4}, Lcom/amazon/device/ads/CalendarEventParameters;->convertToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/CalendarEventParameters;->start:Ljava/util/Date;

    .line 87
    invoke-static {p5}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/amazon/device/ads/CalendarEventParameters;->end:Ljava/util/Date;

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0, p5}, Lcom/amazon/device/ads/CalendarEventParameters;->convertToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/CalendarEventParameters;->end:Ljava/util/Date;

    :goto_0
    return-void

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No start date for event"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No description for event"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private convertToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .line 142
    sget-object v0, Lcom/amazon/device/ads/CalendarEventParameters;->DATE_FORMATS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 147
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    return-object v0

    .line 159
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse datetime string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->start:Ljava/util/Date;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/CalendarEventParameters;->summary:Ljava/lang/String;

    return-object v0
.end method
