.class Lorg/threeten/bp/chrono/ChronoLocalDateTime$1;
.super Ljava/lang/Object;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/chrono/ChronoLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
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
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    check-cast p2, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime$1;->compare(Lorg/threeten/bp/chrono/ChronoLocalDateTime;Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/threeten/bp/chrono/ChronoLocalDateTime;Lorg/threeten/bp/chrono/ChronoLocalDateTime;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime<",
            "*>;)I"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalDate()Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toLocalTime()Lorg/threeten/bp/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Lorg/threeten/bp/LocalTime;->toNanoOfDay()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    :cond_0
    return v0
.end method
