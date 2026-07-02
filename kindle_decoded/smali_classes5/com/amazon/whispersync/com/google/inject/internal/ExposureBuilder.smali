.class public Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;
.super Ljava/lang/Object;
.source "ExposureBuilder.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;"
    }
.end annotation


# instance fields
.field private final binder:Lcom/amazon/whispersync/com/google/inject/Binder;

.field private key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binder;",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    .line 35
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->source:Ljava/lang/Object;

    .line 36
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-void
.end method


# virtual methods
.method public annotatedWith(Ljava/lang/Class;)V
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

    const-string v0, "annotationType"

    .line 46
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->checkNotAnnotated()V

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-void
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)V
    .locals 1

    const-string v0, "annotation"

    .line 52
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->checkNotAnnotated()V

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-void
.end method

.method protected checkNotAnnotated()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->binder:Lcom/amazon/whispersync/com/google/inject/Binder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "More than one annotation is specified for this binding."

    invoke-interface {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "AnnotatedElementBuilder"

    return-object v0
.end method
