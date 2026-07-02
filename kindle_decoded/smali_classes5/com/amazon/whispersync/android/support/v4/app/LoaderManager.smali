.class public abstract Lcom/amazon/whispersync/android/support/v4/app/LoaderManager;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    .line 176
    sput-boolean p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getLoader(I)Lcom/amazon/whispersync/android/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public hasRunningLoaders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method
