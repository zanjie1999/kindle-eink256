.class public Lcom/amazon/kindle/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public static getUtcCalendarForCurrentTime()Ljava/util/Calendar;
    .locals 1

    const-string v0, "UTC"

    .line 13
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
