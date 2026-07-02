.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.super Ljava/lang/Object;
.source "DateDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    }
.end annotation


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Class;

    .line 31
    const-class v2, Ljava/util/Calendar;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v4, Ljava/sql/Date;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-class v4, Ljava/util/Date;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-class v4, Ljava/sql/Timestamp;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 38
    aget-object v2, v1, v3

    .line 39
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 47
    const-class p1, Ljava/util/Calendar;

    if-ne p0, p1, :cond_0

    .line 48
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>()V

    return-object p0

    .line 50
    :cond_0
    const-class p1, Ljava/util/Date;

    if-ne p0, p1, :cond_1

    .line 51
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    return-object p0

    .line 53
    :cond_1
    const-class p1, Ljava/sql/Date;

    if-ne p0, p1, :cond_2

    .line 54
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;-><init>()V

    return-object p0

    .line 56
    :cond_2
    const-class p1, Ljava/sql/Timestamp;

    if-ne p0, p1, :cond_3

    .line 57
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;-><init>()V

    return-object p0

    .line 59
    :cond_3
    const-class p1, Ljava/util/GregorianCalendar;

    if-ne p0, p1, :cond_4

    .line 60
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    const-class p1, Ljava/util/GregorianCalendar;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
