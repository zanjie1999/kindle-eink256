.class public final Lcom/amazon/identity/auth/device/fi;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.fi"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;)Ljava/lang/String;
    .locals 4

    .line 422
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "device_data"

    const/4 v2, 0x0

    .line 433
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    invoke-static {}, Lcom/amazon/identity/auth/device/fi;->ex()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "device_registration_data"

    .line 438
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/fi;->b(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "app_identifier"

    .line 442
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    invoke-static {p0, p2}, Lcom/amazon/identity/auth/device/fi;->c(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "app_info"

    .line 446
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    .line 2495
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->gn()Ljava/util/List;

    move-result-object p0

    .line 2496
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hw;->f(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2500
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    :goto_0
    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_1

    const-string p0, "device_user_dictionary"

    .line 454
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 462
    :catch_0
    sget-object p0, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string p1, "JSONException when adding data to map-md cookie"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 467
    sget-object p1, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "map-md cookies: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 468
    invoke-static {p0}, Lcom/amazon/identity/auth/device/fi;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 469
    sget-object p1, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Base64 encoded map-md cookies: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Z)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 408
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;->ah(Landroid/content/Context;)Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;

    move-result-object p3

    .line 410
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/fi;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 4

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string p0, "DeviceMetadata:RequiredParameterNull:DeviceTypeAndDSN"

    .line 107
    invoke-virtual {p3, p0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 112
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    const-string p0, "DeviceMetadata:RequiredParameterNull:DeviceType"

    .line 116
    invoke-virtual {p3, p0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 121
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_4

    const-string p0, "DeviceMetadata:RequiredParameterNull:DSN"

    .line 125
    invoke-virtual {p3, p0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    :cond_4
    return-object v1

    .line 130
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "device_os_family"

    const-string v3, "android"

    .line 134
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_type"

    .line 135
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_serial"

    .line 136
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "manufacturer"

    .line 2313
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "model"

    .line 2318
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "os_version"

    .line 2328
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "android_id"

    .line 142
    invoke-static {p0, p3}, Lcom/amazon/identity/auth/device/fi;->b(Landroid/content/Context;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "product"

    .line 2333
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 152
    sget-object p1, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string p2, "An unexpected error occurred while building the device metadata JSONObject"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ExceptionType:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "MetadataCollection:UnexpectedException"

    .line 153
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    :catch_1
    move-exception p0

    .line 147
    sget-object p1, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string p2, "JSONException happened when trying to build device metadata"

    invoke-static {p1, p2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 172
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "frc"

    .line 176
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "user_context_map"

    .line 178
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android_id"

    .line 202
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 206
    sget-object v1, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AndroidIdCollection:Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown error happens when collecting android id."

    .line 206
    invoke-static {v1, p1, v3, v2, p0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "sso_telephony_service"

    .line 352
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/ei;

    .line 353
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ei;->dX()Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 362
    sget-object v1, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SimCountryISOCollection:Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unknown exception happened why try to read country ISO"

    .line 362
    invoke-static {v1, p1, v3, v2, p0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static b(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10

    const-string v0, "SHA-256"

    .line 521
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gu()Lcom/amazon/identity/auth/device/hs;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/identity/auth/device/hs;->kH:Ljava/lang/String;

    .line 527
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x40

    const/4 v3, 0x0

    .line 534
    :try_start_0
    invoke-static {p1, v2, p0}, Lcom/amazon/identity/auth/device/ek;->a(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 538
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9

    .line 539
    :try_start_1
    iget v4, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_6

    .line 541
    :try_start_2
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 542
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v7, 0x0

    .line 543
    :goto_0
    :try_start_3
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 545
    aget-object v8, v5, v7

    if-nez v8, :cond_0

    move-object v8, v3

    goto :goto_1

    .line 3030
    :cond_0
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    .line 3035
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 3030
    invoke-static {v8}, Lcom/amazon/identity/auth/device/iz;->i([B)Ljava/lang/String;

    move-result-object v8

    .line 545
    :goto_1
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 548
    :cond_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/fh;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 549
    :try_start_4
    sget-object v5, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "sms app hash = "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_a

    goto/16 :goto_8

    :catch_0
    move-object p0, v3

    goto :goto_3

    :catch_1
    move-object p0, v3

    goto :goto_5

    :catch_2
    move-object p0, v3

    goto/16 :goto_7

    :catch_3
    move-object p0, v3

    move-object v6, p0

    goto :goto_3

    :catch_4
    move-object p0, v3

    move-object v6, p0

    goto :goto_5

    :catch_5
    move-object p0, v3

    move-object v6, p0

    goto :goto_7

    :catch_6
    move-object p0, v3

    move-object v4, p0

    goto :goto_2

    :catch_7
    move-object p0, v3

    move-object v4, p0

    goto :goto_4

    :catch_8
    move-object p0, v3

    move-object v4, p0

    goto :goto_6

    :cond_2
    move-object p0, v3

    move-object v2, p0

    move-object v4, v2

    move-object v6, v4

    goto :goto_8

    :catch_9
    move-object p0, v3

    move-object v2, p0

    move-object v4, v2

    :goto_2
    move-object v6, v4

    .line 563
    :catch_a
    :goto_3
    sget-object v5, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string v7, "GeneralSecurityException when building app identifier JSON for map-md cookie"

    invoke-static {v5, v7}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_b
    move-object p0, v3

    move-object v2, p0

    move-object v4, v2

    :goto_4
    move-object v6, v4

    .line 559
    :catch_c
    :goto_5
    sget-object v5, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string v7, "SecurityException when building app identifier JSON for map-md cookie"

    invoke-static {v5, v7}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_d
    move-object p0, v3

    move-object v2, p0

    move-object v4, v2

    :goto_6
    move-object v6, v4

    .line 555
    :catch_e
    :goto_7
    sget-object v5, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string v7, "NameNotFoundException when building app identifier JSON for map-md cookie"

    invoke-static {v5, v7}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v7, "package"

    .line 569
    invoke-virtual {v5, v7, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app_version"

    .line 571
    invoke-virtual {v5, p1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app_version_name"

    .line 572
    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "app_sms_hash"

    .line 573
    invoke-virtual {v5, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "map_version"

    .line 574
    invoke-virtual {v5, p0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_f

    return-object v5

    .line 580
    :catch_f
    sget-object p0, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string p1, "JSONException when building app identifier JSON for map-md cookie"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method static bN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 474
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 487
    sget-object v0, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string v2, "This platform doesn\'t support UTF-8, this should never happen."

    invoke-static {v0, v2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static c(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 5

    .line 599
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 600
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 601
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "auto_pv"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 603
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 607
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    :goto_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->H(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "auto_pv_with_smsretriever"

    if-eqz v0, :cond_1

    .line 612
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 616
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    :goto_1
    invoke-static {p0}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->J(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string/jumbo v2, "smartlock_supported"

    if-eqz v0, :cond_2

    .line 621
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 625
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    :goto_2
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ej;)Z

    move-result p0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string/jumbo p1, "permission_runtime_grant"

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    .line 630
    :try_start_4
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 634
    :cond_3
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    return-object v1

    .line 640
    :catch_0
    sget-object p0, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string p1, "JSONException when building app info JSON for map-md cookie"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static ex()Lorg/json/JSONObject;
    .locals 3

    .line 505
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gv()Ljava/lang/String;

    move-result-object v0

    .line 506
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "software_version"

    .line 509
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 514
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/fi;->TAG:Ljava/lang/String;

    const-string v1, "JSONException when building device registration JSON for map-md cookie"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 187
    new-instance v0, Lcom/amazon/identity/frc/FrcCookiesManager;

    invoke-direct {v0, p0}, Lcom/amazon/identity/frc/FrcCookiesManager;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v0, p1}, Lcom/amazon/identity/frc/FrcCookiesManager;->getFrcCookies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
