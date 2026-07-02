.class public final Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;
.super Ljava/lang/Object;
.source "SPHHelpers.java"


# static fields
.field private static final MILLISECOND_PER_SECOND:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;->MILLISECOND_PER_SECOND:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToSecondsFromEpoch(Ljava/util/Date;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;->MILLISECOND_PER_SECOND:J

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static secondsFromEpochToDate(I)Ljava/util/Date;
    .locals 5

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    int-to-long v1, p0

    .line 19
    sget-wide v3, Lcom/amazon/whispersync/AmazonDevice/Messaging/SPHHelpers;->MILLISECOND_PER_SECOND:J

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 21
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
