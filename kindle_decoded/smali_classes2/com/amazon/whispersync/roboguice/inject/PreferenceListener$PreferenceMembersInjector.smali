.class Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;
.super Ljava/lang/Object;
.source "PreferenceListener.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferenceMembersInjector"
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
.field protected annotation:Lcom/amazon/whispersync/roboguice/inject/InjectPreference;

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

.field protected instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

.field final synthetic this$0:Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;Ljava/lang/reflect/Field;Lcom/amazon/whispersync/com/google/inject/Provider;Lcom/amazon/whispersync/roboguice/inject/InjectPreference;Lcom/amazon/whispersync/roboguice/inject/ContextScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/amazon/whispersync/roboguice/inject/InjectPreference;",
            "Lcom/amazon/whispersync/roboguice/inject/ContextScope;",
            ")V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->this$0:Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 82
    iput-object p4, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->annotation:Lcom/amazon/whispersync/roboguice/inject/InjectPreference;

    .line 83
    iput-object p3, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    .line 84
    iput-object p5, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    return-void
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 90
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->this$0:Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;

    invoke-virtual {p1, p0}, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener;->registerPreferenceForInjection(Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;)V

    return-void
.end method

.method public reallyInjectMembers()V
    .locals 8

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 102
    :try_start_0
    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->contextProvider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v5}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity;

    iget-object v6, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->annotation:Lcom/amazon/whispersync/roboguice/inject/InjectPreference;

    invoke-interface {v6}, Lcom/amazon/whispersync/roboguice/inject/InjectPreference;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_2

    .line 104
    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v5}, Lcom/amazon/whispersync/roboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v5, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    iget-object v5, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, "(null)"

    :goto_1
    aput-object v6, v5, v3

    aput-object v1, v5, v4

    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "Can\'t assign %s value %s to %s field %s"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
