.class public Lcom/amazon/whispersync/com/google/inject/internal/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;
    }
.end annotation


# static fields
.field private static final bindingAnnotationChecker:Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;

.field private static final scopeChecker:Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 120
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/amazon/whispersync/com/google/inject/ScopeAnnotation;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/amazon/whispersync/javax/inject/Scope;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->scopeChecker:Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;

    .line 173
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/amazon/whispersync/com/google/inject/BindingAnnotation;

    aput-object v2, v1, v4

    const-class v2, Lcom/amazon/whispersync/javax/inject/Qualifier;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->bindingAnnotationChecker:Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canonicalizeIfNamed(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 201
    const-class v0, Lcom/amazon/whispersync/javax/inject/Named;

    if-ne p0, v0, :cond_0

    .line 202
    const-class p0, Lcom/amazon/whispersync/com/google/inject/name/Named;

    :cond_0
    return-object p0
.end method

.method public static canonicalizeIfNamed(Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 1

    .line 188
    instance-of v0, p0, Lcom/amazon/whispersync/javax/inject/Named;

    if-eqz v0, :cond_0

    .line 189
    check-cast p0, Lcom/amazon/whispersync/javax/inject/Named;

    invoke-interface {p0}, Lcom/amazon/whispersync/javax/inject/Named;->value()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/name/Names;->named(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/name/Named;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Classes;->isConcrete(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-static {p2, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p2, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p2

    invoke-virtual {p2, v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->scopeAnnotationOnAbstractType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :cond_1
    return-void
.end method

.method public static findBindingAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 6

    .line 159
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 160
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 161
    invoke-static {v4}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->isBindingAnnotation(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_0

    .line 163
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v4}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->duplicateBindingAnnotations(Ljava/lang/reflect/Member;Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_1

    :cond_0
    move-object v1, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static findScopeAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static findScopeAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 70
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->isScopeAnnotation(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p0, v1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->duplicateScopeAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_1

    :cond_0
    move-object v1, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getKey(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 146
    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    .line 147
    invoke-static {p3, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 148
    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    if-nez p1, :cond_0

    .line 149
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isBindingAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->bindingAnnotationChecker:Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;->hasAnnotations(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isMarker(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRetainedAtRuntime(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 55
    const-class v0, Ljava/lang/annotation/Retention;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Retention;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object p0

    sget-object v0, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScopeAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->scopeChecker:Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;->hasAnnotations(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
