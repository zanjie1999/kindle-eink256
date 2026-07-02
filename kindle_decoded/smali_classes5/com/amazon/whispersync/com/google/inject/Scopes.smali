.class public Lcom/amazon/whispersync/com/google/inject/Scopes;
.super Ljava/lang/Object;
.source "Scopes.java"


# static fields
.field public static final NO_SCOPE:Lcom/amazon/whispersync/com/google/inject/Scope;

.field private static final NULL:Ljava/lang/Object;

.field public static final SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/Scopes;->NULL:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Scopes$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/Scopes$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/Scopes;->SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;

    .line 113
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Scopes$2;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/Scopes$2;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/Scopes;->NO_SCOPE:Lcom/amazon/whispersync/com/google/inject/Scope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/Scopes;->NULL:Ljava/lang/Object;

    return-object v0
.end method

.method public static isSingleton(Lcom/amazon/whispersync/com/google/inject/Binding;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;)Z"
        }
    .end annotation

    .line 132
    :goto_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/Scopes$3;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/Scopes$3;-><init>()V

    invoke-interface {p0, v0}, Lcom/amazon/whispersync/com/google/inject/Binding;->acceptScopingVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 155
    :cond_0
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;

    if-eqz v0, :cond_1

    .line 156
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;

    .line 157
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getInjector()Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_1
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/ExposedBinding;

    if-eqz v0, :cond_2

    .line 163
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/spi/ExposedBinding;

    .line 164
    invoke-interface {p0}, Lcom/amazon/whispersync/com/google/inject/spi/ExposedBinding;->getPrivateElements()Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getInjector()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    invoke-interface {p0}, Lcom/amazon/whispersync/com/google/inject/Binding;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
