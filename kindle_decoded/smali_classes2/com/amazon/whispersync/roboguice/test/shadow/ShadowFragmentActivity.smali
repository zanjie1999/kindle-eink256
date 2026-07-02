.class public Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity;
.super Lcom/xtremelabs/robolectric/shadows/ShadowActivity;
.source "ShadowFragmentActivity.java"


# annotations
.annotation runtime Lcom/xtremelabs/robolectric/internal/Implements;
    value = Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xtremelabs/robolectric/shadows/ShadowActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportFragmentManager()Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;
    .locals 1
    .annotation runtime Lcom/xtremelabs/robolectric/internal/Implementation;
    .end annotation

    .line 22
    new-instance v0, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity$1;-><init>(Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity;)V

    return-object v0
.end method
