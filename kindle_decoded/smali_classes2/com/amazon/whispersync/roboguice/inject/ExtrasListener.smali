.class public Lcom/amazon/whispersync/roboguice/inject/ExtrasListener;
.super Ljava/lang/Object;
.source "ExtrasListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;
    }
.end annotation


# instance fields
.field protected contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/com/google/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener;->namespace:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    return-void
.end method


# virtual methods
.method public hear(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TI;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter<",
            "TI;>;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_3

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 52
    const-class v4, Lcom/amazon/whispersync/roboguice/inject/InjectExtra;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    new-instance v4, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;

    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener;->namespace:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    const-class v7, Lcom/amazon/whispersync/roboguice/inject/InjectExtra;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/amazon/whispersync/roboguice/inject/InjectExtra;

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/amazon/whispersync/com/google/inject/Provider;Lcom/amazon/whispersync/roboguice/inject/InjectExtra;)V

    invoke-interface {p2, v4}, Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;->register(Lcom/amazon/whispersync/com/google/inject/MembersInjector;)V

    goto :goto_2

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Extras may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-void
.end method
