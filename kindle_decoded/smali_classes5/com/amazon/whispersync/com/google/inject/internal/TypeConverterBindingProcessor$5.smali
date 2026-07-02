.class Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$5;
.super Ljava/lang/Object;
.source "TypeConverterBindingProcessor.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Ljava/lang/Class;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;

.field final synthetic val$parser:Ljava/lang/reflect/Method;

.field final synthetic val$wrapperType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$5;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$5;->val$parser:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$5;->val$wrapperType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$5;->val$parser:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 122
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeConverter<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$5;->val$wrapperType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
