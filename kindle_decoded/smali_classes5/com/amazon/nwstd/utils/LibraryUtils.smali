.class public Lcom/amazon/nwstd/utils/LibraryUtils;
.super Ljava/lang/Object;
.source "LibraryUtils.java"


# direct methods
.method public static getLibrarySwitchServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 19
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.amazon.kindle"

    const-string v3, "com.amazon.kcp.application.LibrarySwitchService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.amazon.kindle.library"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LibraryView"

    const-string v2, "NEWSSTAND"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
