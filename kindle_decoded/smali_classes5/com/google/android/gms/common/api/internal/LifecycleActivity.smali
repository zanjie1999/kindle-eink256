.class public Lcom/google/android/gms/common/api/internal/LifecycleActivity;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# instance fields
.field private final zza:Ljava/lang/Object;


# virtual methods
.method public asActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public asFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    .line 1
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public isSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    .line 1
    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    return v0
.end method

.method public final zza()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zza:Ljava/lang/Object;

    .line 1
    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method
