.class Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;-><init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic kx:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$2;->kx:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public df()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$2;->kx:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    .line 1086
    iget-object v0, v0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    .line 103
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$2;->df()V

    return-void
.end method
