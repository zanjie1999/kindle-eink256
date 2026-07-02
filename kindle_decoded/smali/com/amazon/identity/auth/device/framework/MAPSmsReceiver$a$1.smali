.class Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;-><init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kx:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;Landroid/content/Context;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$1;->kx:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$1;->kx:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    .line 1086
    iget-object v0, v0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    .line 110
    iget-object v1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method
