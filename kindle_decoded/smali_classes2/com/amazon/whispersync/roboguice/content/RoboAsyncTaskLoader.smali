.class public abstract Lcom/amazon/whispersync/roboguice/content/RoboAsyncTaskLoader;
.super Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;
.source "RoboAsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader<",
        "TD;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/android/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-static {p1, p2, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice;->injectMembers(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
