.class public Lcom/amazon/nwstd/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final GMT_TZ:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GMT"

    .line 9
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/utils/DateUtils;->GMT_TZ:Ljava/util/TimeZone;

    return-void
.end method

.method public static getLongDate(J)Ljava/lang/String;
    .locals 1

    .line 17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x1

    .line 18
    invoke-static {p0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p0

    .line 19
    sget-object p1, Lcom/amazon/nwstd/utils/DateUtils;->GMT_TZ:Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 20
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
