.class Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;
.super Ljava/lang/Object;
.source "Annotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Annotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnnotationChecker"
.end annotation


# instance fields
.field private final annotationTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasAnnotations:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;->hasAnnotations:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;

    .line 102
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->weakKeys()Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;->hasAnnotations:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$MapMaker;->makeComputingMap(Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;->cache:Ljava/util/Map;

    .line 109
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;->annotationTypes:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;)Ljava/util/Collection;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;->annotationTypes:Ljava/util/Collection;

    return-object p0
.end method


# virtual methods
.method hasAnnotations(Ljava/lang/Class;)Z
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

    .line 116
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Annotations$AnnotationChecker;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
