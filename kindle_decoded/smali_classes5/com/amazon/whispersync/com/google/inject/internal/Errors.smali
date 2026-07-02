.class public final Lcom/amazon/whispersync/com/google/inject/internal/Errors;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_RULES:Ljava/lang/String; = "Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

.field private static final converters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

.field private final root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

.field private final source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 642
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors$2;

    const-class v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$2;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/Errors$3;

    const-class v2, Ljava/lang/reflect/Member;

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$3;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/amazon/whispersync/com/google/inject/internal/Errors$4;

    const-class v3, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-direct {v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$4;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->converters:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->parent:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 95
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->source:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Object;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 106
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->parent:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 107
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->source:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->parent:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 101
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->source:Ljava/lang/Object;

    return-void
.end method

.method private varargs addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 1

    .line 508
    invoke-static {p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 509
    new-instance p3, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getSources()Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0, p2, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Lcom/amazon/whispersync/com/google/inject/spi/Message;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-object p0
.end method

.method public static convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 665
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->converters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;

    .line 666
    invoke-virtual {v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;->appliesTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    invoke-virtual {v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static format(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, ":%n%n"

    invoke-virtual {p0, v2, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .line 547
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 549
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v4, 0x1

    .line 550
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-virtual {v5}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "%s) %s%n"

    invoke-virtual {p0, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 552
    invoke-virtual {v5}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getSources()Ljava/util/List;

    move-result-object v4

    .line 553
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_2
    if-ltz v6, :cond_1

    .line 554
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 555
    invoke-static {p0, v8}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 558
    :cond_1
    invoke-virtual {v5}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 560
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 561
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 562
    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Caused by: %s"

    invoke-virtual {p0, v5, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_2
    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "%n"

    .line 565
    invoke-virtual {p0, v5, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v4, v7

    goto :goto_1

    .line 568
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "1 error"

    .line 569
    invoke-virtual {p0, v0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    .line 571
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s errors"

    invoke-virtual {p0, p1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 574
    :goto_3
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 522
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 523
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatInjectionPoint(Ljava/util/Formatter;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Formatter;",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ")V"
        }
    .end annotation

    .line 706
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    .line 707
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Classes;->memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v1

    .line 709
    const-class v2, Ljava/lang/reflect/Field;

    const-string v3, "  while locating %s%n"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    .line 710
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    new-array p2, v4, [Ljava/lang/Object;

    .line 711
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-virtual {p0, v3, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    new-array p1, v4, [Ljava/lang/Object;

    .line 712
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v5

    const-string p2, "    for field at %s%n"

    invoke-virtual {p0, p2, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-array p2, v4, [Ljava/lang/Object;

    .line 715
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v5

    invoke-virtual {p0, v3, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 716
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getParameterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "    for parameter %s at %s%n"

    invoke-virtual {p0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V
    .locals 5

    .line 674
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    if-eqz v0, :cond_1

    .line 675
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    .line 676
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->formatInjectionPoint(Ljava/util/Formatter;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V

    goto :goto_0

    .line 683
    :cond_1
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 684
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-static {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->formatInjectionPoint(Ljava/util/Formatter;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    goto :goto_0

    .line 686
    :cond_2
    instance-of v0, p1, Ljava/lang/Class;

    const-string v1, "  at %s%n"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    .line 687
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$StackTraceElements;->forType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 689
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    .line 690
    check-cast p1, Ljava/lang/reflect/Member;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 692
    :cond_4
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    const-string v4, "  while locating %s%n"

    if-eqz v0, :cond_5

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 693
    invoke-virtual {p0, v4, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 695
    :cond_5
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/Key;

    if-eqz v0, :cond_6

    .line 696
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Key;

    new-array v0, v3, [Ljava/lang/Object;

    .line 697
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v4, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_6
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 700
    invoke-virtual {p0, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_0
    return-void
.end method

.method public static getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;"
        }
    .end annotation

    .line 373
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;

    if-eqz v0, :cond_0

    .line 374
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/ProvisionException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 375
    :cond_0
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    if-eqz v0, :cond_1

    .line 376
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 377
    :cond_1
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/CreationException;

    if-eqz v0, :cond_2

    .line 378
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/CreationException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/CreationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 380
    :cond_2
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 603
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    .line 604
    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private merge(Lcom/amazon/whispersync/com/google/inject/spi/Message;)Lcom/amazon/whispersync/com/google/inject/spi/Message;
    .locals 3

    .line 455
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 458
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private unwrap(Ljava/lang/RuntimeException;)Ljava/lang/Throwable;
    .locals 1

    .line 395
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/Exceptions$UnhandledCheckedUserException;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addMessage(Lcom/amazon/whispersync/com/google/inject/spi/Message;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v1, v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v1, :cond_0

    .line 515
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errors:Ljava/util/List;

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public ambiguousTypeConversion(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 165
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const-string p1, "Multiple converters can convert \'%s\' (bound at %s) to %s:%n %s and%n %s.%n Please adjust your type converter configuration to avoid overlapping matches."

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public bindingAlreadySet(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 295
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "A binding to %s was already configured at %s."

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public bindingToProvider()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Binding to Provider is not allowed."

    .line 173
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotBindToGuiceType(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Binding to core guice framework type is not allowed: %s."

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectAbstractMethod(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Injected method %s cannot be abstract."

    .line 274
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectFinalField(Ljava/lang/reflect/Field;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Injected field %s cannot be final."

    .line 270
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectInnerClass(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Injecting into inner classes is not supported.  Please use a \'static\' class (top-level or nested) instead of %s."

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectMethodWithTypeParameters(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Injected method %s cannot declare type parameters of its own."

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectNonVoidMethod(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Injected method %s must return void."

    .line 278
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectRawMembersInjector()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot inject a MembersInjector that has no type parameter"

    .line 407
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectRawProvider()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot inject a Provider that has no type parameter"

    .line 403
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectRawTypeLiteral()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot inject a TypeLiteral that has no type parameter"

    .line 415
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectTypeLiteralOf(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Cannot inject a TypeLiteral of %s"

    .line 411
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotSatisfyCircularDependency(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Tried proxying %s to support a circular dependency, but it is not an interface."

    .line 419
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    if-nez p1, :cond_2

    .line 583
    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 587
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getParameterIndex()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    .line 591
    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "null returned by binding at %s%n but %s%s is not @Nullable"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 594
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public childBindingAlreadySet(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/util/Set;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 304
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "%n    (bound by a just-in-time binding)"

    .line 306
    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "%n    bound at %s"

    .line 308
    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 311
    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "Unable to create binding for %s. It was already configured on one or more child injectors or private modules%s%n  If it was in a PrivateModule, did you forget to expose the binding?"

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public circularProxiesDisabled(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Tried proxying %s to support a circular dependency, but circular proxies are disabled."

    .line 425
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public constructorNotDefinedByType(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s does not define %s"

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public conversionError(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 157
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const-string p1, "Error converting \'%s\' (bound at %s) to %s%n using %s.%n Reason: %s"

    invoke-virtual {p0, p5, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public conversionTypeError(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 149
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const-string p1, "Type mismatch converting \'%s\' (bound at %s) to %s%n using %s.%n Converter returned %s."

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public converterReturnedNull(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 142
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "Received null converting \'%s\' (bound at %s) to %s%n using %s."

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public duplicateBindingAnnotations(Ljava/lang/reflect/Member;Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "%s has more than one annotation annotated with @BindingAnnotation: %s and %s"

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public duplicateScopeAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "More than one scope annotation was found: %s and %s."

    .line 287
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public duplicateScopes(Lcom/amazon/whispersync/com/google/inject/Scope;Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "Scope %s is already bound to %s. Cannot bind %s."

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorCheckingDuplicateBinding(Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 321
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "A binding to %s was already configured at %s and an error was thrown while checking duplicate bindings.  Error: %s"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorEnhancingClass(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unable to method intercept: %s"

    .line 369
    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorInProvider(Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    .line 344
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->unwrap(Ljava/lang/RuntimeException;)Ljava/lang/Throwable;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error in custom provider, %s"

    .line 345
    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public varargs errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    .line 385
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v0

    .line 387
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1

    .line 390
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorInUserInjector(Lcom/amazon/whispersync/com/google/inject/MembersInjector;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "Error injecting %s using %s.%n Reason: %s"

    .line 350
    invoke-virtual {p0, p3, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorInjectingConstructor(Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error injecting constructor, %s"

    .line 340
    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorInjectingMethod(Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error injecting method, %s"

    .line 328
    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorNotifyingInjectionListener(Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionListener<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "Error notifying InjectionListener %s of %s.%n Reason: %s"

    .line 356
    invoke-virtual {p0, p3, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorNotifyingTypeListener(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 333
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->getListener()Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->getSource()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const-string p1, "Error notifying TypeListener %s (bound at %s) of %s.%n Reason: %s"

    invoke-virtual {p0, p3, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public exposedButNotBound(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not expose() %s, it must be explicitly bound."

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 530
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    return-object v0

    .line 533
    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/Errors$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 478
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    .line 480
    iget-object v2, v1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->source:Ljava/lang/Object;

    sget-object v3, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 481
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 479
    :cond_0
    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->parent:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jitBindingAlreadySet(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "A just-in-time binding to %s was already configured on a parent injector."

    .line 299
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public jitDisabled(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Explicit bindings are required and %s is not explicitly bound."

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public keyNotFullySpecified(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s cannot be used as a key; It is not fully specified."

    .line 365
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 1

    .line 469
    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    if-eq p1, v0, :cond_1

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    .line 462
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    .line 463
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/spi/Message;)Lcom/amazon/whispersync/com/google/inject/spi/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Lcom/amazon/whispersync/com/google/inject/spi/Message;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public misplacedBindingAnnotation(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s is annotated with %s, but binding annotations should be applied to its parameters instead."

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public missingConstantValues()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Missing constant value. Please call to(...)."

    .line 255
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public missingConstructor(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Could not find a suitable constructor in %s. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

    .line 231
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public missingImplementation(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "No implementation for %s was bound."

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public missingRuntimeRetention(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 194
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Please annotate with @Retention(RUNTIME).%n Bound at %s."

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public missingScopeAnnotation()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Please annotate with @ScopeAnnotation."

    .line 199
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public notASubtype(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s doesn\'t extend %s."

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public optionalConstructor(Ljava/lang/reflect/Constructor;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s is annotated @Inject(optional=true), but constructors cannot be optional."

    .line 203
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public recursiveBinding()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Binding points to itself."

    .line 291
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public recursiveImplementationType()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@ImplementedBy points to the same class it annotates."

    .line 186
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public recursiveProviderType()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@ProvidedBy points to the same class it annotates."

    .line 190
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public scopeAnnotationOnAbstractType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 217
    invoke-static {p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "%s is annotated with %s, but scope annotations are not supported for abstract types.%n Bound at %s."

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public scopeNotFound(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "No scope is bound to %s."

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->root:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public subtypeNotProvided(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s doesn\'t provide instances of %s."

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public throwConfigurationExceptionIfErrorsExist()V
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public throwCreationExceptionIfErrorsExist()V
    .locals 2

    .line 431
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/CreationException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/CreationException;-><init>(Ljava/util/Collection;)V

    throw v0
.end method

.method public throwIfNewErrors(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method public throwProvisionExceptionIfErrorsExist()V
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/ProvisionException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/ProvisionException;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
    .locals 1

    .line 496
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    return-object v0
.end method

.method public tooManyConstructors(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s has more than one constructor annotated with @Inject. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public voidProviderMethod()Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Provider methods must return a value. Do not return void."

    .line 251
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    .locals 1

    .line 114
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
