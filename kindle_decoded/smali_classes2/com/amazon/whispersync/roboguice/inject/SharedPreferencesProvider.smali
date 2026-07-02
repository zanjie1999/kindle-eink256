.class public Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;
.super Ljava/lang/Object;
.source "SharedPreferencesProvider.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider$PreferencesNameHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ROBOGUICE_1_DEFAULT_FILENAME:Ljava/lang/String; = "default.xml"


# instance fields
.field protected application:Landroid/app/Application;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field protected preferencesName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider$PreferencesNameHolder;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object p1, p1, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider$PreferencesNameHolder;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;->preferencesName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;->preferencesName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;->preferencesName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;->application:Landroid/app/Application;

    invoke-virtual {v2, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "shared_prefs/default.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;->application:Landroid/app/Application;

    const-string v2, "default.xml"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;->application:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/inject/SharedPreferencesProvider;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
