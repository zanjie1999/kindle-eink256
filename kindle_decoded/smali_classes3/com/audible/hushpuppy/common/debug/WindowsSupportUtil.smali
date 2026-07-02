.class public Lcom/audible/hushpuppy/common/debug/WindowsSupportUtil;
.super Ljava/lang/Object;
.source "WindowsSupportUtil.java"


# direct methods
.method public static isWindowsDevice()Z
    .locals 2

    .line 15
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Subsystem for Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
