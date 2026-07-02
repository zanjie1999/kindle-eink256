.class public Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;
.super Ljava/lang/Object;
.source "DefaultStatsCalendarManagerImpl.java"

# interfaces
.implements Lcom/audible/application/stats/util/IStatsCalendarManager;


# static fields
.field private static final MMMFormat:Ljava/text/DateFormat;

.field private static M_dFormat:Ljava/text/DateFormat;

.field private static final h_mmaFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "h:mma"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;->h_mmaFormat:Ljava/text/DateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MMM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;->MMMFormat:Ljava/text/DateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "M/d"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;->M_dFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaysFromDate(Ljava/util/Date;I)Ljava/util/Date;
    .locals 5

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    int-to-long p1, p2

    const-wide/32 v3, 0x5265c00

    mul-long p1, p1, v3

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDaysFromToday(I)Ljava/util/Date;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;->getToday()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;->getDaysFromDate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public final getMonthRelativeToCurrentMonth(I)Ljava/util/Calendar;
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 216
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x5

    const/4 v1, 0x1

    .line 217
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public getOneMonthFromDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    .line 63
    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 65
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result p1

    add-int/2addr v0, v1

    invoke-direct {v2, p1, v0, v1}, Ljava/util/Date;-><init>(III)V

    return-object v2

    .line 67
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result p1

    add-int/2addr p1, v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/util/Date;-><init>(III)V

    return-object v0
.end method

.method public final getThisMonth()Ljava/util/Calendar;
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public getToday()Ljava/util/Date;
    .locals 3

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 31
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 35
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTodayCalendar()Ljava/util/Calendar;
    .locals 3

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 189
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 190
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 191
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 192
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method
