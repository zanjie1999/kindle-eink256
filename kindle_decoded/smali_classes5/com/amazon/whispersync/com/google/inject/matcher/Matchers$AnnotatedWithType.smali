.class Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;
.super Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;
.source "Matchers.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnotatedWithType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher<",
        "Ljava/lang/reflect/AnnotatedElement;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final annotationType:Ljava/lang/Class;
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
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;-><init>()V

    const-string v0, "annotation type"

    .line 116
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;->annotationType:Ljava/lang/Class;

    .line 117
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->access$200(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 125
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;->annotationType:Ljava/lang/Class;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;->annotationType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;->annotationType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;->matches(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;->annotationType:Ljava/lang/Class;

    invoke-interface {p1, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotatedWith("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;->annotationType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
