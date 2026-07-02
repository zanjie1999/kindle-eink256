.class public Lcom/amazon/whispersync/roboguice/inject/ResourceListener;
.super Ljava/lang/Object;
.source "ResourceListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;
    }
.end annotation


# instance fields
.field protected application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener;->application:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public hear(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V
    .locals 7
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

    .line 48
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    const-class v4, Lcom/amazon/whispersync/roboguice/inject/InjectResource;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    new-instance v4, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;

    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener;->application:Landroid/app/Application;

    const-class v6, Lcom/amazon/whispersync/roboguice/inject/InjectResource;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/roboguice/inject/InjectResource;

    invoke-direct {v4, v3, v5, v6}, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;-><init>(Ljava/lang/reflect/Field;Landroid/app/Application;Lcom/amazon/whispersync/roboguice/inject/InjectResource;)V

    invoke-interface {p2, v4}, Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;->register(Lcom/amazon/whispersync/com/google/inject/MembersInjector;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs requestStaticInjection([Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 58
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 59
    :goto_1
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    .line 60
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 61
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-class v8, Lcom/amazon/whispersync/roboguice/inject/InjectResource;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 62
    new-instance v8, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;

    iget-object v9, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener;->application:Landroid/app/Application;

    const-class v10, Lcom/amazon/whispersync/roboguice/inject/InjectResource;

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/amazon/whispersync/roboguice/inject/InjectResource;

    invoke-direct {v8, v7, v9, v10}, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;-><init>(Ljava/lang/reflect/Field;Landroid/app/Application;Lcom/amazon/whispersync/roboguice/inject/InjectResource;)V

    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->injectMembers(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
