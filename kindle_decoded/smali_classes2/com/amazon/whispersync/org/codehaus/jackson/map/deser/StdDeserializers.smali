.class Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;
.super Ljava/lang/Object;
.source "StdDeserializers.java"


# instance fields
.field final _deserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/UntypedObjectDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 37
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StringDeserializer;-><init>()V

    .line 38
    const-class v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V

    .line 39
    const-class v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V

    .line 40
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ClassDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ClassDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 43
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 44
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 45
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 46
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;

    const-class v1, Ljava/lang/Character;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 47
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 48
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 49
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 50
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 55
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BooleanDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 56
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 57
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$ShortDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 58
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$CharacterDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 59
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 60
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 61
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 62
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$DoubleDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 65
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$NumberDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$NumberDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 66
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BigDecimalDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BigDecimalDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 67
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BigIntegerDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$BigIntegerDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 69
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CalendarDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CalendarDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 70
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/DateDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/DateDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 74
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CalendarDeserializer;

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V

    .line 76
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$SqlDateDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$SqlDateDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 77
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/TimestampDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/TimestampDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 80
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->all()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;

    .line 81
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer$StackTraceElementDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 91
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicBooleanDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicBooleanDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 94
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/TokenBufferDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/TokenBufferDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    .line 95
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JavaTypeDeserializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/JavaTypeDeserializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V

    return-void
.end method

.method private add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer<",
            "*>;)V"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V

    return-void
.end method

.method private add(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static constructAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;-><init>()V

    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdDeserializers;->_deserializers:Ljava/util/HashMap;

    return-object v0
.end method
