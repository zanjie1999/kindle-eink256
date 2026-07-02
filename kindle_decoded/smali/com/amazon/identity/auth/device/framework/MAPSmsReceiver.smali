.class public Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;
    }
.end annotation


# instance fields
.field private bO:Lcom/amazon/identity/auth/device/ej;

.field private ek:Landroid/webkit/WebView;

.field private er:Lcom/amazon/identity/auth/device/fe;

.field private ks:Ljava/lang/Boolean;

.field private volatile kt:Z

.field private volatile ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ej;Landroid/webkit/WebView;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 131
    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ek:Landroid/webkit/WebView;

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ks:Ljava/lang/Boolean;

    const/4 p2, 0x0

    .line 133
    iput-boolean p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->kt:Z

    .line 134
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    const-string p1, "MAPSmsReceiver"

    const-string p2, "instance created"

    .line 135
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MAPSmsReceiver"

    const-string v1, "Not able to start sms retriever"

    .line 323
    invoke-static {v0, v1, p2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    iget-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v0, "MOA:RegisterReadSmsReceiverFailed"

    invoke-virtual {p2, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->L(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->dd()V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    return-object p0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)Z
    .locals 1

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->kt:Z

    return v0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)Landroid/webkit/WebView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ek:Landroid/webkit/WebView;

    return-object p0
.end method

.method private declared-synchronized dd()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MAPSmsReceiver"

    const-string/jumbo v1, "sms retriever registered"

    .line 317
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "MOA:RegisterReadSmsReceiver"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public H(Landroid/content/Context;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ks:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 143
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->H(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ks:Ljava/lang/Boolean;

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sms retriever is supported: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ks:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAPSmsReceiver"

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ks:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public declared-synchronized L(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MAPSmsReceiver"

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregistering sms retriever: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    if-eqz v0, :cond_1

    .line 339
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->kt:Z

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "MOA:AutoPVCancel"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    .line 2118
    iget-object v1, v0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;->jg:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 2119
    iput-object p1, v0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;->kw:Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    .line 344
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    .line 345
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->er:Lcom/amazon/identity/auth/device/fe;

    :cond_1
    const-string p1, "MAPSmsReceiver"

    const-string v0, "Unregistered MAP sms receiver"

    .line 347
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/amazon/identity/auth/device/fe;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MAPSmsReceiver"

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registering sms retriever: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;-><init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    .line 310
    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->er:Lcom/amazon/identity/auth/device/fe;

    :cond_0
    const-string p1, "MAPSmsReceiver"

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "registered sms retriever: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ku:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$a;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MAPSmsReceiver"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "url is null or empty"

    .line 181
    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 187
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    invoke-virtual {p0, v0, p2}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Ljava/net/URL;Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 191
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "MalformedURLException url="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return v1
.end method

.method public a(Ljava/net/URL;Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/ap/pv"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/ap/cvf/request"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v1, "spin=true"

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "smsretriever=true"

    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 168
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->H(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public declared-synchronized de()V
    .locals 2

    monitor-enter p0

    .line 352
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->kt:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "MOA:AutoPVSuccess"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    .line 211
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0xf

    if-eq v0, p1, :cond_1

    const-string p1, "MAPSmsReceiver"

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Receiving message get unknown status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "MAPSmsReceiver"

    const-string p2, "Receiving message timeout"

    .line 236
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    .line 215
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "MAPSmsReceiver"

    const-string v0, "Receiving message"

    .line 216
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    :try_start_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->er:Lcom/amazon/identity/auth/device/fe;

    if-eqz p2, :cond_3

    const-string p2, "MAPSmsReceiver"

    const-string v0, "Consuming SMS message via SmsRetrieverManager"

    .line 223
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->er:Lcom/amazon/identity/auth/device/fe;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/fe;->bL(Ljava/lang/String;)V

    .line 225
    monitor-exit p0

    return-void

    .line 229
    :cond_3
    invoke-static {p1}, Lcom/amazon/identity/auth/device/is;->du(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAPSmsReceiver"

    const-string/jumbo v0, "submit code"

    .line 1254
    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 1258
    iget-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v0, "MOA:GetValidCodeFromSMS"

    invoke-virtual {p2, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1266
    :cond_4
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1274
    :try_start_3
    iget-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->ek:Landroid/webkit/WebView;

    if-eqz p2, :cond_5

    .line 1277
    new-instance p2, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver$1;-><init>(Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    const-string p1, "MAPSmsReceiver"

    const-string p2, "get an non-numeric code"

    .line 1270
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 245
    iget-object p2, p0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->bO:Lcom/amazon/identity/auth/device/ej;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnknownExceptionReadingSMS:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAPSmsReceiver"

    const-string v1, "Unknown exception happened when reading the message."

    .line 245
    invoke-static {v0, p2, v1, p1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
