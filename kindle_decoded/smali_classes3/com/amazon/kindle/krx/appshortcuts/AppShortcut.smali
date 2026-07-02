.class public interface abstract Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;
.super Ljava/lang/Object;
.source "AppShortcut.java"

# interfaces
.implements Lcom/amazon/kindle/krx/foundation/Prioritized;


# virtual methods
.method public abstract getBundle()Landroid/os/PersistableBundle;
.end method

.method public abstract getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIntents(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongLabel(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSettingsSubtitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSettingsTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getShortLabel(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method
