.class Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    }
.end annotation


# static fields
.field private static final GMT_OPTION:Ljava/lang/String; = "GMT[+-]\\d{1,2}:\\d{2}"

.field private static final ID:I = 0x0

.field private static final RFC_822_TIME_ZONE:Ljava/lang/String; = "[+-]\\d{4}"


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final tzNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 14

    const/4 v0, 0x0

    .line 835
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    .line 836
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}"

    .line 839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    new-instance v1, Ljava/util/TreeSet;

    invoke-static {}, Lorg/apache/commons/lang3/time/FastDateParser;->access$800()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 843
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v2

    .line 844
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 846
    aget-object v7, v6, v4

    const-string v8, "GMT"

    .line 847
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_3

    .line 850
    :cond_0
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 853
    new-instance v8, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    invoke-direct {v8, v7, v4}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    const/4 v9, 0x1

    move-object v11, v8

    const/4 v10, 0x1

    .line 855
    :goto_1
    array-length v12, v6

    if-ge v10, v12, :cond_4

    const/4 v12, 0x3

    if-eq v10, v12, :cond_2

    const/4 v12, 0x5

    if-eq v10, v12, :cond_1

    goto :goto_2

    :cond_1
    move-object v11, v8

    goto :goto_2

    .line 859
    :cond_2
    new-instance v11, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    invoke-direct {v11, v7, v9}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    .line 867
    :goto_2
    aget-object v12, v6, v10

    if-eqz v12, :cond_3

    .line 868
    aget-object v12, v6, v10

    invoke-virtual {v12, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 871
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 872
    iget-object v13, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v13, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 879
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x7c

    .line 880
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$900(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const-string p1, ")"

    .line 882
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    .line 891
    invoke-static {p3}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 893
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 895
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    const/16 p3, 0x10

    .line 896
    iget v0, p1, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    invoke-virtual {p2, p3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xf

    .line 897
    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    return-void
.end method
