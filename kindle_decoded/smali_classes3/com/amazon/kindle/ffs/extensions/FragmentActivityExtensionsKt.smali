.class public final Lcom/amazon/kindle/ffs/extensions/FragmentActivityExtensionsKt;
.super Ljava/lang/Object;
.source "FragmentActivityExtensions.kt"


# direct methods
.method public static final hasLocationPermission(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 1

    const-string v0, "$this$hasLocationPermission"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/amazon/kindle/ffs/extensions/FragmentActivityExtensionsKt;->isBuildVersionLeesThan23()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isBuildVersionLeesThan23()Z
    .locals 2

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final requestLocationPermission(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const-string v0, "$this$requestLocationPermission"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/amazon/kindle/ffs/extensions/FragmentActivityExtensionsKt;->hasLocationPermission(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x1b9d9

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
