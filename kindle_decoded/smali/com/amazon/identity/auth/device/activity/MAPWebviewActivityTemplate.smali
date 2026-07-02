.class public abstract Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;
.super Landroid/app/Activity;
.source "DCP"


# instance fields
.field protected bO:Lcom/amazon/identity/auth/device/ej;

.field protected bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

.field protected ek:Landroid/webkit/WebView;

.field protected em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

.field protected eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

.field protected er:Lcom/amazon/identity/auth/device/fe;

.field protected et:Ljava/lang/String;

.field protected eu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fa:Landroid/os/Bundle;

.field protected fb:Ljava/lang/String;

.field protected fc:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

.field protected o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static aZ()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 357
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 358
    invoke-static {}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ba()Z

    move-result v1

    const-string/jumbo v2, "ui_type"

    if-eqz v1, :cond_0

    const-string v1, "WebView"

    .line 360
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ui_version"

    const-string v2, "1.0"

    .line 361
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "MAPWebviewActivityTemplate_NO_WEBVIEW"

    .line 365
    invoke-static {v3, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "NoUISupported"

    .line 366
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-object v0
.end method

.method private static ba()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.webkit.WebView"

    .line 375
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 380
    sget-object v2, Lamazon/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lamazon/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\s+"

    const-string v5, "_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget v2, Lamazon/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "NO_WEBVIEW_%s_%s_API_%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "MAPUIActivityTemplate"

    const-string v1, "Webview is not supported on this device."

    .line 381
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method protected a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "MAPUIActivityTemplate"

    .line 291
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 294
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 295
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 296
    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/jl;->aK(Landroid/content/Context;)V

    .line 297
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 299
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Adding cookie to CookieManager: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jl;->aK(Landroid/content/Context;)V

    return-void

    :cond_1
    const-string p1, "Fail to detect account/actor auth cookies, it shouldn\'t happen for challenge use case."

    .line 306
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p2, "No auth cookies in the option bundle, this should not happen"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method protected aA(Ljava/lang/String;)V
    .locals 11

    const-string v0, "MAPUIActivityTemplate"

    .line 313
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->bO:Lcom/amazon/identity/auth/device/ej;

    const/4 v3, 0x1

    .line 316
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/fi;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Z)Ljava/lang/String;

    move-result-object v7

    .line 320
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v4, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string/jumbo v6, "map-md"

    const-string v8, "/ap"

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected aB(Ljava/lang/String;)V
    .locals 9

    const-string v0, "MAPUIActivityTemplate"

    const-string v1, "Clearing MAP MD cookies"

    .line 351
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v4, "map-md"

    const-string v5, ""

    const-string v6, "/ap"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected abstract aN()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
.end method

.method protected abstract aO()Ljava/lang/String;
.end method

.method protected abstract aP()Ljava/lang/String;
.end method

.method protected abstract aQ()Ljava/lang/String;
.end method

.method protected abstract aR()V
.end method

.method protected abstract aS()Ljava/lang/String;
.end method

.method protected abstract aT()Ljava/lang/String;
.end method

.method protected abstract aU()[Ljava/lang/String;
.end method

.method protected abstract aV()V
.end method

.method protected abstract aW()Ljava/lang/String;
.end method

.method protected aX()V
    .locals 3

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 163
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ix;->a(Landroid/app/Activity;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    .line 167
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aN()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fc:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    .line 170
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->B(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 172
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aQ()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 175
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v2, "Failed to get webview! This shouldn\'t happen."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->k(Landroid/os/Bundle;)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/ej;->b(Landroid/content/Intent;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 179
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fb:Ljava/lang/String;

    .line 180
    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/fi;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->et:Ljava/lang/String;

    .line 181
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eu:Ljava/util/Set;

    .line 182
    new-instance v1, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 183
    new-instance v1, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    invoke-direct {v1, p0, v0}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    .line 184
    new-instance v0, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->bO:Lcom/amazon/identity/auth/device/ej;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;-><init>(Lcom/amazon/identity/auth/device/ej;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    .line 185
    new-instance v1, Lcom/amazon/identity/auth/device/fe;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v1, v2, v0}, Lcom/amazon/identity/auth/device/fe;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->er:Lcom/amazon/identity/auth/device/fe;

    return-void
.end method

.method protected aY()V
    .locals 9

    const-string v0, "MAPUIActivityTemplate"

    const-string v1, "Clearing frc cookies"

    .line 336
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eu:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 339
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 343
    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, "frc"

    const-string v5, ""

    const-string v6, "/ap"

    invoke-static/range {v2 .. v8}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    return-void
.end method

.method protected av(Ljava/lang/String;)V
    .locals 9

    .line 259
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting FRC cookies for url: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "MAPUIActivityTemplate"

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->et:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jk;->dI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eu:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting up the frc cookie in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for domain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->et:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, "frc"

    const-string v6, "/ap"

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected az(Ljava/lang/String;)V
    .locals 4

    const-string v0, "MAPUIActivityTemplate"

    const-string v1, "Clearing User Spec cookies"

    .line 227
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    .line 232
    invoke-static {}, Lcom/amazon/identity/auth/device/hx;->gB()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sid"

    const-string v3, "/"

    .line 228
    invoke-static {v0, p1, v2, v3, v1}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract k(Landroid/os/Bundle;)V
.end method

.method protected m(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "MAPUIActivityTemplate"

    const-string v1, "Initializing auth challenge webview"

    .line 197
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 204
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 206
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 207
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 208
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v2, 0x1

    .line 209
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 210
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 214
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearFormData()V

    .line 220
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current WebView user agent version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "MAPUIActivityTemplate"

    const-string/jumbo v1, "onActivityResult()"

    .line 389
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->a(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 85
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aX()V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aR()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->m(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->az(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aS()Ljava/lang/String;

    move-result-object v3

    const-string p1, "MAPUIActivityTemplate"

    const-string v2, "Setting SID cookie"

    .line 1238
    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 1240
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aT()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.amazon.dcp.sso.token.cookie.sid"

    invoke-virtual {p1, v2, v4}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1241
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1246
    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v4, "sid"

    const-string v6, "/"

    .line 1251
    invoke-static {}, Lcom/amazon/identity/auth/device/hx;->gB()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1246
    invoke-static/range {v2 .. v8}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->av(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aU()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aV()V

    .line 103
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aA(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 111
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "An Exception was thrown with message: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->k(Landroid/os/Bundle;)V

    return-void

    :catch_1
    move-exception p1

    .line 107
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "An IllegalArgumentException was thrown with message: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDestroy called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAPUIActivityTemplate"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aY()V

    .line 122
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aB(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OPERATION_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "MAPUIActivityTemplate"

    const-string v1, "Customer hit back and cannot go back in webview. Returning error."

    .line 145
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->k(Landroid/os/Bundle;)V

    .line 147
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
