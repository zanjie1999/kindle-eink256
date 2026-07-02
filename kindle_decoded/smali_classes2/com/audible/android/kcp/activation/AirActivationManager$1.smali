.class Lcom/audible/android/kcp/activation/AirActivationManager$1;
.super Ljava/lang/Object;
.source "AirActivationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/android/kcp/activation/AirActivationManager;->activateDevice(Lcom/audible/android/kcp/activation/ActivationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/activation/AirActivationManager;

.field final synthetic val$activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;


# direct methods
.method constructor <init>(Lcom/audible/android/kcp/activation/AirActivationManager;Lcom/audible/android/kcp/activation/ActivationCallback;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/audible/android/kcp/activation/AirActivationManager$1;->this$0:Lcom/audible/android/kcp/activation/AirActivationManager;

    iput-object p2, p0, Lcom/audible/android/kcp/activation/AirActivationManager$1;->val$activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationManager$1;->this$0:Lcom/audible/android/kcp/activation/AirActivationManager;

    iget-object v1, p0, Lcom/audible/android/kcp/activation/AirActivationManager$1;->val$activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/activation/AirActivationManager;->access$000(Lcom/audible/android/kcp/activation/AirActivationManager;Lcom/audible/android/kcp/activation/ActivationCallback;)V

    return-void
.end method
