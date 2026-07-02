.class public Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;
.super Ljava/lang/Object;
.source "PreferenceListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;
    }
.end annotation


# instance fields
.field protected application:Landroid/app/Application;

.field protected contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected preferencesForInjection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/Provider;Landroid/app/Application;Lcom/amazon/whispersync/roboguice/inject/ContextScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/app/Application;",
            "Lcom/amazon/whispersync/roboguice/inject/ContextScope;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->application:Landroid/app/Application;

    .line 47
    iput-object p3, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    return-void
.end method


# virtual methods
.method public hear(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;)V
    .locals 10
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

    .line 51
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_3

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 53
    const-class v3, Lcom/amazon/whispersync/roboguice/inject/InjectPreference;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    new-instance v9, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    const-class v3, Lcom/amazon/whispersync/roboguice/inject/InjectPreference;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/amazon/whispersync/roboguice/inject/InjectPreference;

    iget-object v8, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;-><init>(Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;Ljava/lang/reflect/Field;Lcom/amazon/whispersync/com/google/inject/Provider;Lcom/amazon/whispersync/roboguice/inject/InjectPreference;Lcom/amazon/whispersync/roboguice/inject/ContextScope;)V

    invoke-interface {p2, v9}, Lcom/amazon/whispersync/com/google/inject/spi/TypeEncounter;->register(Lcom/amazon/whispersync/com/google/inject/MembersInjector;)V

    goto :goto_2

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Preferences may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public injectPreferenceViews()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;

    invoke-virtual {v1}, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->reallyInjectMembers()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerPreferenceForInjection(Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector<",
            "*>;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
