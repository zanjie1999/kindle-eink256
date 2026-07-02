.class public final Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;
.super Ljava/lang/Object;
.source "TypeConverterBinding.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/Element;


# instance fields
.field private final source:Ljava/lang/Object;

.field private final typeConverter:Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;

.field private final typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "source"

    .line 42
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->source:Ljava/lang/Object;

    const-string/jumbo p1, "typeMatcher"

    .line 43
    invoke-static {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    const-string/jumbo p1, "typeConverter"

    .line 44
    invoke-static {p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->typeConverter:Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 60
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->typeConverter:Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;

    invoke-interface {p1, v0, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->convertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    return-void
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeConverter()Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->typeConverter:Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;

    return-object v0
.end method

.method public getTypeMatcher()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->typeConverter:Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which matches "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (bound at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
