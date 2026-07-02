.class final Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;
.source "TypeConverterBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    return-void
.end method

.method private convertToClass(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->identicalTo(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToClasses(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    return-void
.end method

.method private convertToClasses(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$6;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V

    invoke-direct {p0, v0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->internalConvertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    return-void
.end method

.method private convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Strings;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 116
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$5;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 133
    invoke-direct {p0, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToClass(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private internalConvertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;

    sget-object v2, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, p2}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->addConverter(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)V

    return-void
.end method


# virtual methods
.method prepareBuiltInConverters(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
    .locals 2

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    const/4 p1, 0x0

    .line 48
    :try_start_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 49
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 51
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 52
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    const-class v0, Ljava/lang/Character;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToClass(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    .line 70
    const-class v0, Ljava/lang/Enum;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->subclassesOf(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$2;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$2;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToClasses(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    .line 81
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$3;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$3;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;)V

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$4;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$4;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->internalConvertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    return-void

    :catchall_0
    move-exception v0

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    throw v0
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Ljava/lang/Boolean;
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->getTypeMatcher()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->getTypeConverter()Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->addConverter(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)V

    const/4 p1, 0x1

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
