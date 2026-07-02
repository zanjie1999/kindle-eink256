.class Lorg/threeten/bp/chrono/ChronoZonedDateTime$1;
.super Ljava/lang/Object;
.source "ChronoZonedDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/chrono/ChronoZonedDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 116
    check-cast p1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    check-cast p2, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoZonedDateTime$1;->compare(Lorg/threeten/bp/chrono/ChronoZonedDateTime;Lorg/threeten/bp/chrono/ChronoZonedDateTime;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/threeten/bp/chrono/ChronoZonedDateTime;Lorg/threeten/bp/chrono/ChronoZonedDateTime;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
            "*>;",
            "Lorg/threeten/bp/chrono/ChronoZonedDateTime<",
            "*>;)I"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoZonedDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    :cond_0
    return v0
.end method
