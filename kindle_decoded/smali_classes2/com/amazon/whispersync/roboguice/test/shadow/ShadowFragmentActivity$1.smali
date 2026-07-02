.class Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity$1;
.super Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;
.source "ShadowFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity;->getSupportFragmentManager()Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity$1;->this$0:Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity;

    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 0

    return-void
.end method

.method public beginTransaction()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity$1$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity$1$1;-><init>(Lcom/amazon/whispersync/roboguice/test/shadow/ShadowFragmentActivity$1;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findFragmentById(I)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBackStackEntryAt(I)Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$BackStackEntry;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBackStackEntryCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public popBackStack()V
    .locals 0

    return-void
.end method

.method public popBackStack(II)V
    .locals 0

    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public removeOnBackStackChangedListener(Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 0

    return-void
.end method

.method public saveFragmentInstanceState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
