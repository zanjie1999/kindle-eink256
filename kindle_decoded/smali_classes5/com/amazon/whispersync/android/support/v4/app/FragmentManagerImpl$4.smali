.class Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->popBackStack(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;II)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;->this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;->val$id:I

    iput p3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 473
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;->this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;->val$id:I

    iget v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;->val$flags:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    return-void
.end method
