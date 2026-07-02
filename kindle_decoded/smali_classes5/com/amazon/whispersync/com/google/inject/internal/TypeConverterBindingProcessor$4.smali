.class Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$4;
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

    .line 91
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$4;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;

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

    .line 95
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeConverter<Class<?>>"

    return-object v0
.end method
