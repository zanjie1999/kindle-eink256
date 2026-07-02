.class public final Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;
.super Ljava/lang/Object;
.source "TypeListenerBinding.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/Element;


# instance fields
.field private final listener:Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;

.field private final source:Ljava/lang/Object;

.field private final typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->source:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->listener:Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;

    .line 43
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 61
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->getSource()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->listener:Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;

    invoke-interface {p1, v0, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V

    return-void
.end method

.method public getListener()Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->listener:Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeMatcher()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;->typeMatcher:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    return-object v0
.end method
