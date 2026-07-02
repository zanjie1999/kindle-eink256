.class final Lcom/amazon/whispersync/com/google/inject/internal/Errors$4;
.super Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Errors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter<",
        "Lcom/amazon/whispersync/com/google/inject/Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 653
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$Converter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public toString(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/String;
    .locals 2

    .line 655
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " annotated with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 659
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 653
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$4;->toString(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
