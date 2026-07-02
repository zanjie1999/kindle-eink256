.class public Lcom/amazon/whispersync/com/google/inject/Key;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;,
        Lcom/amazon/whispersync/com/google/inject/Key$AnnotationInstanceStrategy;,
        Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;,
        Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

.field private final hashCode:I

.field private final typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    .line 109
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 110
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->computeHashCode()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->hashCode:I

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    .line 126
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 127
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->computeHashCode()I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->hashCode:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    .line 71
    const-class p1, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 72
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->computeHashCode()I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->hashCode:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    .line 91
    const-class p1, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 92
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->computeHashCode()I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->hashCode:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    .line 119
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalizeForKey(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    .line 120
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->computeHashCode()I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->hashCode:I

    return-void
.end method

.method private computeHashCode()I
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static ensureIsBindingAnnotation(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 366
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->isBindingAnnotation(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%s is not a binding annotation. Please annotate it with @BindingAnnotation."

    invoke-static {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static ensureRetainedAtRuntime(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->isRetainedAtRuntime(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%s is not retained at runtime. Please annotate it with @Retention(RUNTIME)."

    invoke-static {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 272
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method static get(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 227
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;->INSTANCE:Lcom/amazon/whispersync/com/google/inject/Key$NullAnnotationStrategy;

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->strategyFor(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->strategyFor(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method static strategyFor(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;"
        }
    .end annotation

    const-string v0, "annotation type"

    .line 351
    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->ensureRetainedAtRuntime(Ljava/lang/Class;)V

    .line 353
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/Key;->ensureIsBindingAnnotation(Ljava/lang/Class;)V

    .line 354
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->canonicalizeIfNamed(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method static strategyFor(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;
    .locals 2

    const-string v0, "annotation"

    .line 335
    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->ensureRetainedAtRuntime(Ljava/lang/Class;)V

    .line 338
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->ensureIsBindingAnnotation(Ljava/lang/Class;)V

    .line 340
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->isMarker(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;

    invoke-direct {v1, v0, p0}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationTypeStrategy;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v1

    .line 344
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationInstanceStrategy;

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->canonicalizeIfNamed(Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationInstanceStrategy;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 184
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/com/google/inject/Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 187
    :cond_1
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Key;

    .line 188
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    iget-object v3, p1, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotationType()Ljava/lang/Class;
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

    .line 145
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    return-object v0
.end method

.method hasAnnotationType()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAttributes()Z
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;->hasAttributes()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->hashCode:I

    return v0
.end method

.method public ofType(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public ofType(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method public ofType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 292
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method

.method providerKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->providerType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/Key;->ofType(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withoutAttributes()Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Key;->typeLiteral:Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/Key;->annotationStrategy:Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    invoke-interface {v2}, Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;->withoutAttributes()Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/Key;-><init>(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;)V

    return-object v0
.end method
