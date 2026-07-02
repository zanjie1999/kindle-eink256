.class public Lcom/amazon/whispersync/roboguice/inject/ViewListener;
.super Ljava/lang/Object;
.source "ViewListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;


# annotations
.annotation runtime Lcom/amazon/whispersync/javax/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;
    }
.end annotation


# static fields
.field protected static fragmentClass:Ljava/lang/Class;

.field protected static fragmentFindFragmentByIdMethod:Ljava/lang/reflect/Method;

.field protected static fragmentFindFragmentByTagMethod:Ljava/lang/reflect/Method;

.field protected static fragmentGetViewMethod:Ljava/lang/reflect/Method;

.field protected static fragmentManagerClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v0, "com.amazon.whispersync.android.support.v4.app.Fragment"

    .line 49
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    const-string v0, "com.amazon.whispersync.android.support.v4.app.FragmentManager"

    .line 50
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    .line 51
    sget-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    const-string v1, "getView"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentGetViewMethod:Ljava/lang/reflect/Method;

    .line 52
    sget-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    const-string v1, "findFragmentById"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentFindFragmentByIdMethod:Ljava/lang/reflect/Method;

    .line 53
    sget-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    const-string v1, "findFragmentByTag"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentFindFragmentByTagMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hear(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V
    .locals 6
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

    .line 59
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_c

    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_b

    aget-object v3, v0, v2

    .line 61
    const-class v4, Lcom/amazon/whispersync/roboguice/inject/InjectView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 64
    const-class v4, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    const-class v4, Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-class v4, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectView in Activity contexts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    :goto_2
    new-instance v4, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/InjectView;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-direct {v4, v3, v5, p2}, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V

    invoke-interface {p2, v4}, Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;->register(Lcom/amazon/whispersync/com/google/inject/MembersInjector;)V

    goto/16 :goto_5

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectView on fields descended from type View"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Views may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_4
    const-class v4, Lcom/amazon/whispersync/roboguice/inject/InjectFragment;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 73
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 75
    sget-object v4, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 76
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectFragment on fields descended from type Fragment"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_6
    :goto_3
    const-class v4, Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-class v4, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 78
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You may only use @InjectFragment in Activity contexts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_8
    :goto_4
    new-instance v4, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;

    const-class v5, Lcom/amazon/whispersync/roboguice/inject/InjectFragment;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-direct {v4, v3, v5, p2}, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V

    invoke-interface {p2, v4}, Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;->register(Lcom/amazon/whispersync/com/google/inject/MembersInjector;)V

    goto :goto_5

    .line 74
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Fragments may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 59
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
