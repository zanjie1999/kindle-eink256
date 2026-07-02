.class Lorg/threeten/bp/OffsetDateTime$2;
.super Ljava/lang/Object;
.source "OffsetDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/OffsetDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/threeten/bp/OffsetDateTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 136
    check-cast p1, Lorg/threeten/bp/OffsetDateTime;

    check-cast p2, Lorg/threeten/bp/OffsetDateTime;

    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/OffsetDateTime$2;->compare(Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/threeten/bp/OffsetDateTime;Lorg/threeten/bp/OffsetDateTime;)I
    .locals 4

    .line 139
    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1}, Lorg/threeten/bp/OffsetDateTime;->getNano()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2}, Lorg/threeten/bp/OffsetDateTime;->getNano()I

    move-result p1

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v0

    :cond_0
    return v0
.end method
