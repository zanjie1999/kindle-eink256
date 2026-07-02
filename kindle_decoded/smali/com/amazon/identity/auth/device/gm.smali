.class public Lcom/amazon/identity/auth/device/gm;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.gm"


# instance fields
.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private final oy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 38
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gm;->oy:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 255
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 260
    :cond_0
    sget-object v2, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const-string v3, "Commit failed retrying"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xf

    .line 264
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 268
    sget-object v3, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const-string v4, "Retry sleep interrupted"

    invoke-static {v3, v4, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/gm;
    .locals 2

    .line 45
    new-instance v0, Lcom/amazon/identity/auth/device/ds;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const-string v1, "Create DE shared preference, OS supports direct boot."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/gm;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/gm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public O(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_0

    .line 97
    sget-object v0, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gm;->oy:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "Failed to set key %s in the local key value store %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;J)Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_0

    .line 121
    sget-object p3, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gm;->oy:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "Failed to set key %s in the local key value store %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gm;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_0

    .line 136
    sget-object v0, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gm;->oy:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "Failed to set key %s in the local key value store %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/gm;->cs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ct(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public cu(Ljava/lang/String;)J
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public cv(Ljava/lang/String;)Z
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    sget-object v1, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/gm;->oy:Ljava/lang/String;

    aput-object v3, v2, p1

    const-string p1, "Failed to remove key: %s from value store %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public e(Ljava/lang/String;I)Z
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_0

    .line 149
    sget-object v0, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/gm;->oy:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "Failed to set key %s in the local key value store %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public fG()Z
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    sget-object v1, Lcom/amazon/identity/auth/device/gm;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/identity/auth/device/gm;->oy:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Failed to clear the local key value store %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gm;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
