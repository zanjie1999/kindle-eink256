.class Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$1;->this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$1;->this$0:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    return-void
.end method
