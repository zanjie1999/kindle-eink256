.class public Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;
.super Ljava/lang/Object;
.source "ResourceListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/inject/ResourceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResourceMembersInjector"
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
.field protected annotation:Lcom/amazon/whispersync/roboguice/inject/InjectResource;

.field protected application:Landroid/app/Application;

.field protected field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Landroid/app/Application;Lcom/amazon/whispersync/roboguice/inject/InjectResource;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 83
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->application:Landroid/app/Application;

    .line 84
    iput-object p3, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->annotation:Lcom/amazon/whispersync/roboguice/inject/InjectResource;

    return-void
.end method


# virtual methods
.method protected getId(Landroid/content/res/Resources;Lcom/amazon/whispersync/roboguice/inject/InjectResource;)I
    .locals 1

    .line 135
    invoke-interface {p2}, Lcom/amazon/whispersync/roboguice/inject/InjectResource;->value()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {p2}, Lcom/amazon/whispersync/roboguice/inject/InjectResource;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    :try_start_0
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->application:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 94
    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->annotation:Lcom/amazon/whispersync/roboguice/inject/InjectResource;

    invoke-virtual {p0, v4, v5}, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->getId(Landroid/content/res/Resources;Lcom/amazon/whispersync/roboguice/inject/InjectResource;)I

    move-result v5

    .line 95
    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 97
    const-class v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 99
    :cond_0
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_a

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_2

    .line 101
    :cond_1
    const-class v7, Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto/16 :goto_3

    .line 103
    :cond_2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_9

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    const-class v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 106
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 107
    :cond_4
    const-class v7, [Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 108
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 109
    :cond_5
    const-class v7, [I

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_8

    const-class v7, [Ljava/lang/Integer;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_0

    .line 111
    :cond_6
    const-class v7, Landroid/view/animation/Animation;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 112
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->application:Landroid/app/Application;

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_3

    .line 113
    :cond_7
    const-class v7, Landroid/graphics/Movie;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 114
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v3

    goto :goto_3

    .line 110
    :cond_8
    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    goto :goto_3

    .line 104
    :cond_9
    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    .line 100
    :cond_a
    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_b
    :goto_3
    if-nez v3, :cond_d

    .line 117
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v4}, Lcom/amazon/whispersync/roboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    .line 118
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v4, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_d
    :goto_4
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 123
    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 129
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_5

    :cond_e
    const-string v5, "(null)"

    :goto_5
    aput-object v5, v4, v1

    aput-object v3, v4, v2

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "Can\'t assign %s value %s to %s field %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
