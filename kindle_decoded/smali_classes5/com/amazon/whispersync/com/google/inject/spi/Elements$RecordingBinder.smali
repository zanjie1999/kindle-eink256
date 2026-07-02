.class Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;
.super Ljava/lang/Object;
.source "Elements.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Binder;
.implements Lcom/amazon/whispersync/com/google/inject/PrivateBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/spi/Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordingBinder"
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final modules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

.field private final privateElements:Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;

.field private final source:Ljava/lang/Object;

.field private final sourceProvider:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

.field private final stage:Lcom/amazon/whispersync/com/google/inject/Stage;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/Stage;)V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    .line 137
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 138
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->DEFAULT_INSTANCE:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/amazon/whispersync/com/google/inject/spi/Elements;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/amazon/whispersync/com/google/inject/AbstractModule;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingBuilder;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->plusSkippedClasses([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    .line 143
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    .line 144
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/Stage;Lcom/amazon/whispersync/com/google/inject/spi/Elements$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/amazon/whispersync/com/google/inject/Stage;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    .line 164
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 165
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->getElementsMutable()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 166
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 167
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    .line 168
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    .line 169
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;)V
    .locals 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v0, v2

    .line 150
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(Z)V

    .line 152
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    .line 153
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    .line 154
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    .line 155
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    .line 156
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    .line 157
    iget-object p2, p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->parent:Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    .line 158
    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;)Ljava/util/List;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    return-object p0
.end method

.method private exposeInternal(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Cannot expose %s on a standard binder. Exposed bindings are only applicable to private binders."

    .line 326
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder$1;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder$1;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;)V

    return-object p1

    .line 334
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;-><init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V

    .line 335
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->privateElements:Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;->addExposureBuilder(Lcom/amazon/whispersync/com/google/inject/internal/ExposureBuilder;)V

    return-object v0
.end method


# virtual methods
.method public addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .locals 4

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An exception was caught and reported. Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v2, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingBuilder;-><init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V

    return-object v0
.end method

.method public bind(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 258
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 262
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bindConstant()Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;
    .locals 3

    .line 266
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantBindingBuilderImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;",
            ")V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ")V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;-><init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public convertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public currentStage()Lcom/amazon/whispersync/com/google/inject/Stage;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    return-object v0
.end method

.method public disableCircularProxies()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/DisableCircularProxiesOption;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/com/google/inject/spi/DisableCircularProxiesOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public expose(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .line 321
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;

    move-result-object p1

    return-object p1
.end method

.method public expose(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation

    .line 317
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;

    move-result-object p1

    return-object p1
.end method

.method public expose(Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)V"
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->exposeInternal(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;

    return-void
.end method

.method public getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)V

    .line 197
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;->getMembersInjector()Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 202
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V

    .line 271
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->getProvider()Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method protected getSource()Ljava/lang/Object;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->get()Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public install(Lcom/amazon/whispersync/com/google/inject/Module;)V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->modules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/PrivateModule;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p0}, Lcom/amazon/whispersync/com/google/inject/Binder;->newPrivateBinder()Lcom/amazon/whispersync/com/google/inject/PrivateBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 223
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Module;->configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 225
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v2

    .line 226
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->addError(Ljava/lang/Throwable;)V

    .line 232
    :goto_1
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethodsModule;->forModule(Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Module;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Binder;->install(Lcom/amazon/whispersync/com/google/inject/Module;)V

    :cond_2
    return-void
.end method

.method public newPrivateBinder()Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
    .locals 2

    .line 299
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;-><init>(Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    invoke-direct {v1, p0, v0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementsImpl;)V

    return-object v1
.end method

.method public requestInjection(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestInjection(Ljava/lang/Object;)V
    .locals 1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->requestInjection(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 210
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 211
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v4, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requireExplicitBindings()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->elements:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binder;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    move-result-object p1

    return-object p1
.end method

.method public varargs skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->source:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object p0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->sourceProvider:Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->plusSkippedClasses([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;

    move-result-object p1

    .line 295
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Binder"

    return-object v0
.end method

.method public bridge synthetic withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    move-result-object p1

    return-object p1
.end method

.method public withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;
    .locals 2

    .line 285
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/Elements$RecordingBinder;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;)V

    return-object v0
.end method
