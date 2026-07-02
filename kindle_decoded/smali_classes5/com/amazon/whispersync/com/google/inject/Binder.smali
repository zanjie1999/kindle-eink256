.class public interface abstract Lcom/amazon/whispersync/com/google/inject/Binder;
.super Ljava/lang/Object;
.source "Binder.java"


# virtual methods
.method public abstract addError(Lcom/amazon/whispersync/com/google/inject/spi/Message;)V
.end method

.method public varargs abstract addError(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract addError(Ljava/lang/Throwable;)V
.end method

.method public abstract bind(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
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
.end method

.method public abstract bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
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
.end method

.method public abstract bind(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract bindConstant()Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedConstantBindingBuilder;
.end method

.method public abstract bindListener(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;)V
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
.end method

.method public abstract bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V
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
.end method

.method public abstract convertToTypes(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/spi/TypeConverter;)V
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
.end method

.method public abstract currentStage()Lcom/amazon/whispersync/com/google/inject/Stage;
.end method

.method public abstract disableCircularProxies()V
.end method

.method public abstract getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
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
.end method

.method public abstract getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
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
.end method

.method public abstract getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;
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
.end method

.method public abstract getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;
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
.end method

.method public abstract install(Lcom/amazon/whispersync/com/google/inject/Module;)V
.end method

.method public abstract newPrivateBinder()Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
.end method

.method public abstract requestInjection(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract requestInjection(Ljava/lang/Object;)V
.end method

.method public varargs abstract requestStaticInjection([Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract requireExplicitBindings()V
.end method

.method public varargs abstract skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binder;
.end method

.method public abstract withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;
.end method
