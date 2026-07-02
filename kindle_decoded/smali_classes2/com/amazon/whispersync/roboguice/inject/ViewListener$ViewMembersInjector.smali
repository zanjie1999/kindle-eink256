.class public Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;
.super Ljava/lang/Object;
.source "ViewListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/inject/ViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewMembersInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static viewMembersInjectors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected activityProvider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected annotation:Ljava/lang/annotation/Annotation;

.field protected field:Ljava/lang/reflect/Field;

.field protected fragmentManagerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

.field protected instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter<",
            "TT;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 100
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    .line 101
    const-class p1, Landroid/app/Activity;

    invoke-interface {p3, p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->activityProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 103
    sget-object p1, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentManagerClass:Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p3, p1}, Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->fragmentManagerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    :cond_0
    return-void
.end method

.method protected static injectViews(Ljava/lang/Object;)V
    .locals 3

    .line 241
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;

    monitor-enter v0

    .line 243
    :try_start_0
    sget-object v1, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;

    .line 246
    invoke-virtual {v2, p0}, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMembers(Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 115
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->activityProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 117
    sget-object v2, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    :cond_0
    if-nez v1, :cond_1

    .line 119
    monitor-exit v0

    return-void

    .line 122
    :cond_1
    sget-object v2, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    sget-object v3, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected reallyInjectMemberFragments(Ljava/lang/Object;)V
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_2

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t inject fragment into a non-Activity context"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lcom/amazon/whispersync/roboguice/inject/InjectFragment;

    .line 213
    invoke-interface {v4}, Lcom/amazon/whispersync/roboguice/inject/InjectFragment;->value()I

    move-result v5

    if-ltz v5, :cond_3

    .line 216
    sget-object v4, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentFindFragmentByIdMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->fragmentManagerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v6}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 219
    :cond_3
    sget-object v5, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentFindFragmentByTagMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->fragmentManagerProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v6}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/amazon/whispersync/roboguice/inject/InjectFragment;->tag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    .line 221
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v4}, Lcom/amazon/whispersync/roboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 222
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 234
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_3

    :cond_6
    const-string v6, "(null)"

    :goto_3
    aput-object v6, v5, v2

    aput-object p1, v5, v3

    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, p1

    const-string p1, "Can\'t assign %s value %s to %s field %s"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception p1

    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected reallyInjectMemberViews(Ljava/lang/Object;)V
    .locals 8

    .line 158
    sget-object v0, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 162
    :cond_1
    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_3

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Can\'t inject view into a non-Activity context"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 168
    :try_start_0
    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v5, Lcom/amazon/whispersync/roboguice/inject/InjectView;

    .line 169
    invoke-interface {v5}, Lcom/amazon/whispersync/roboguice/inject/InjectView;->value()I

    move-result v6

    if-ltz v6, :cond_5

    .line 172
    sget-object v5, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentGetViewMethod:Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_4
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_2
    move-object v1, p1

    goto :goto_4

    .line 175
    :cond_5
    sget-object v6, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentClass:Ljava/lang/Class;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/amazon/whispersync/roboguice/inject/ViewListener;->fragmentGetViewMethod:Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v5}, Lcom/amazon/whispersync/roboguice/inject/InjectView;->tag()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_6
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v5}, Lcom/amazon/whispersync/roboguice/inject/InjectView;->tag()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_4
    if-nez v1, :cond_8

    .line 178
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/amazon/whispersync/roboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    .line 179
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 182
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_6

    :cond_9
    const-string v6, "(null)"

    :goto_6
    aput-object v6, v5, v4

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "Can\'t assign %s value %s to %s field %s"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reallyInjectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    instance-of v0, v0, Lcom/amazon/whispersync/roboguice/inject/InjectView;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMemberViews(Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/roboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMemberFragments(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
