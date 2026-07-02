.class Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$3;
.super Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;
.source "TypeConverterBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;->prepareBuiltInConverters(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher<",
        "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$3;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)Z"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 82
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeConverterBindingProcessor$3;->matches(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Class<?>"

    return-object v0
.end method
