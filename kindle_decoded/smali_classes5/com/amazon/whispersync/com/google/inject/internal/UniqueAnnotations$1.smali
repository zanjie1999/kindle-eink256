.class final Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$1;
.super Ljava/lang/Object;
.source "UniqueAnnotations.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$Internal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations;->create(I)Ljava/lang/annotation/Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 47
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$Internal;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 55
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$Internal;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$Internal;

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$Internal;->value()I

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$1;->value()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$1;->val$value:I

    const v1, 0x4f9c270f    # 5.2396109E9f

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$Internal;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$1;->val$value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/UniqueAnnotations$1;->val$value:I

    return v0
.end method
