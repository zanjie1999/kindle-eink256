.class public Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;,
        Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;,
        Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;
    }
.end annotation


# static fields
.field private static final lU:Ljava/util/regex/Pattern;


# instance fields
.field private lV:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;

.field private lW:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;

.field private lX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\+?[1-9]\\d{1,14}$"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lU:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->J(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lX:Z

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "smartlock supporting:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lX:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomerInfoManager"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lV:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;

    .line 124
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lX:Z

    if-eqz v1, :cond_0

    .line 126
    new-instance v0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;

    invoke-direct {v0, p1, p2}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lW:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;

    return-void

    .line 130
    :cond_0
    iput-object v0, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lW:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, "CustomerInfoManager"

    if-ne p1, v0, :cond_2

    :try_start_0
    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 2196
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 2197
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object p2

    .line 2198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3012
    new-instance v0, Lcom/amazon/identity/auth/device/fb$a;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/fb$a;-><init>()V

    .line 2206
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/fb$a;->bH(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fb$a;

    .line 2207
    sget-object p1, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lU:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2209
    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/fb$a;->bJ(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fb$a;

    goto :goto_0

    .line 2213
    :cond_0
    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/fb$a;->bI(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fb$a;

    .line 4012
    :goto_0
    new-instance p1, Lcom/amazon/identity/auth/device/fc$a;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/fc$a;-><init>()V

    .line 2215
    sget-object p2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->OK:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    .line 2216
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/fc$a;->a(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;)Lcom/amazon/identity/auth/device/fc$a;

    move-result-object p1

    .line 2217
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fb$a;->en()Lcom/amazon/identity/auth/device/fb;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/fc$a;->a(Lcom/amazon/identity/auth/device/fb;)Lcom/amazon/identity/auth/device/fc$a;

    move-result-object p1

    .line 2218
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc$a;->eq()Lcom/amazon/identity/auth/device/fc;

    move-result-object p1

    goto :goto_2

    .line 2201
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "got empty id from hint response:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_3

    const-string p1, "No Available hint"

    .line 2223
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 5012
    new-instance p1, Lcom/amazon/identity/auth/device/fc$a;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/fc$a;-><init>()V

    .line 2224
    sget-object p2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->NO_HINTS_AVAILABLE:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    .line 2225
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/fc$a;->a(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;)Lcom/amazon/identity/auth/device/fc$a;

    move-result-object p1

    .line 2226
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc$a;->eq()Lcom/amazon/identity/auth/device/fc;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "Hint Read cancelled"

    .line 2230
    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 6012
    new-instance p1, Lcom/amazon/identity/auth/device/fc$a;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/fc$a;-><init>()V

    .line 2231
    sget-object p2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->CANCELLED:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    .line 2232
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/fc$a;->a(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;)Lcom/amazon/identity/auth/device/fc$a;

    move-result-object p1

    .line 2233
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc$a;->eq()Lcom/amazon/identity/auth/device/fc;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 184
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "parseActivityResult error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7012
    new-instance p1, Lcom/amazon/identity/auth/device/fc$a;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/fc$a;-><init>()V

    .line 185
    sget-object p2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->ERROR:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    .line 186
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/fc$a;->a(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;)Lcom/amazon/identity/auth/device/fc$a;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc$a;->eq()Lcom/amazon/identity/auth/device/fc;

    move-result-object p1

    .line 189
    :goto_2
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->a(Lcom/amazon/identity/auth/device/fc;)V

    return-void
.end method

.method protected a(Lcom/amazon/identity/auth/device/fc;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lV:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;

    if-nez v0, :cond_0

    const-string p1, "CustomerInfoManager"

    const-string v0, "got null consumer callback, there may be errors when sending hint request"

    .line 166
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;->b(Lcom/amazon/identity/auth/device/fc;)V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lV:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;

    return-void
.end method

.method public a(Ljava/util/Set;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$HintType;",
            ">;",
            "Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;",
            ")V"
        }
    .end annotation

    .line 140
    :try_start_0
    iput-object p2, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lV:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;

    .line 142
    iget-boolean p2, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lX:Z

    if-eqz p2, :cond_0

    .line 144
    iget-object p2, p0, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->lW:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$b;->h(Ljava/util/Set;)V

    return-void

    .line 1012
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/fc$a;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/fc$a;-><init>()V

    .line 148
    sget-object p2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->NO_PLAY_SERVICE_SUPPORT:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    .line 149
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/fc$a;->a(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;)Lcom/amazon/identity/auth/device/fc$a;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc$a;->eq()Lcom/amazon/identity/auth/device/fc;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->a(Lcom/amazon/identity/auth/device/fc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "CustomerInfoManager"

    const-string/jumbo v0, "startIntentSenderForResult"

    .line 155
    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2012
    new-instance p1, Lcom/amazon/identity/auth/device/fc$a;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/fc$a;-><init>()V

    .line 156
    sget-object p2, Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;->ERROR:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    .line 157
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/fc$a;->a(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;)Lcom/amazon/identity/auth/device/fc$a;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc$a;->eq()Lcom/amazon/identity/auth/device/fc;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->a(Lcom/amazon/identity/auth/device/fc;)V

    return-void
.end method
