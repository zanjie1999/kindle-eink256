.class Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

.field volatile kw:Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;->kw:Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    .line 92
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    .line 1124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    invoke-static {p2}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;->kw:Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    const-string p1, "MAPSmsReceiver"

    .line 95
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;->kw:Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string/jumbo v1, "mSmsRetrieverClient started"

    .line 97
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance p1, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$2;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$2;-><init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p1, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a$1;-><init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
