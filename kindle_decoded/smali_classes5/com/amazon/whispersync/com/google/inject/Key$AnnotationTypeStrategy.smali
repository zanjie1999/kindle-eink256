.class Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnnotationTypeStrategy"
.end annotation


# instance fields
.field final annotation:Ljava/lang/annotation/Annotation;

.field final annotationType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "annotation type"

    .line 447
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;->annotationType:Ljava/lang/Class;

    .line 448
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;->annotation:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 468
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 472
    :cond_0
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;

    .line 473
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;->annotationType:Ljava/lang/Class;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotationType()Ljava/lang/Class;
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

    .line 464
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;->annotationType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withoutAttributes()Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Key already has no attributes."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
