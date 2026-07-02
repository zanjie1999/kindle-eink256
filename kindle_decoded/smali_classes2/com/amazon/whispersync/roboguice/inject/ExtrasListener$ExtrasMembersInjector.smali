.class public Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;
.super Ljava/lang/Object;
.source "ExtrasListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/inject/ExtrasListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExtrasMembersInjector"
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


# instance fields
.field protected annotation:Lcom/amazon/whispersync/roboguice/inject/InjectExtra;

.field protected contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected field:Ljava/lang/reflect/Field;

.field protected final namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/amazon/whispersync/com/google/inject/Provider;Lcom/amazon/whispersync/roboguice/inject/InjectExtra;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/amazon/whispersync/roboguice/inject/InjectExtra;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->namespace:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 73
    iput-object p3, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 74
    iput-object p4, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->annotation:Lcom/amazon/whispersync/roboguice/inject/InjectExtra;

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Injector;)Ljava/lang/Object;
    .locals 4

    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ExtraConverter;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/util/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    .line 148
    invoke-interface {p3}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBindings()Ljava/util/Map;

    move-result-object v0

    .line 150
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {p3, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getInstance(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/roboguice/inject/ExtraConverter;

    .line 152
    invoke-interface {p1, p2}, Lcom/amazon/whispersync/roboguice/inject/ExtraConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 80
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 84
    check-cast v0, Landroid/app/Activity;

    .line 87
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->annotation:Lcom/amazon/whispersync/roboguice/inject/InjectExtra;

    invoke-interface {v1}, Lcom/amazon/whispersync/roboguice/inject/InjectExtra;->value()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_4

    .line 90
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_2

    .line 101
    :cond_0
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    iget-object v7, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    invoke-virtual {p0, v4, v1, v0}, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->convert(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Injector;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 113
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v1}, Lcom/amazon/whispersync/roboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Can\'t inject null value into %s.%s when field is not @Nullable"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v4, "(null)"

    :goto_1
    aput-object v4, v1, v2

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "Can\'t assign %s value %s to %s field %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 93
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->annotation:Lcom/amazon/whispersync/roboguice/inject/InjectExtra;

    invoke-interface {p1}, Lcom/amazon/whispersync/roboguice/inject/InjectExtra;->optional()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 96
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "Can\'t find the mandatory extra identified by key [%s] on field %s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ExtrasListener$ExtrasMembersInjector;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Extras may not be injected into contexts that are not Activities (error in class %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
