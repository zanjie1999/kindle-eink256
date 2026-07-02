.class Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$2;
.super Ljava/lang/Object;
.source "TypeConverterBindingProcessor.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->prepareBuiltInConverters(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$2;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeConverter<E extends Enum<E>>"

    return-object v0
.end method
