.class public Lcom/amazon/identity/auth/device/hk;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/hk$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hk"

.field private static final qk:Ljava/lang/Object;


# instance fields
.field private ql:Lcom/amazon/identity/auth/device/fs;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/hk;->qk:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hk;->w:Lcom/amazon/identity/auth/device/gc;

    .line 49
    new-instance v0, Lcom/amazon/identity/auth/device/hk$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/hk$1;-><init>(Lcom/amazon/identity/auth/device/hk;Lcom/amazon/identity/auth/device/ed;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hk;->ql:Lcom/amazon/identity/auth/device/fs;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/identity/auth/device/hk;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/hk$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/amazon/identity/auth/device/hk;->qk:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/hk;->cS(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 127
    new-instance v1, Lcom/amazon/identity/auth/device/hk$a;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/hk$a;-><init>(Lorg/json/JSONArray;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private cS(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hk;->ql:Lcom/amazon/identity/auth/device/fs;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/fs;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/hk;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get encrypted data due to BadPaddingException"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 143
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    .line 147
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/hk;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Parsed user dictionary content: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 148
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cQ(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper$UserDictionaryInvalidUserLoginException;
        }
    .end annotation

    .line 1164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 82
    sget-object v0, Lcom/amazon/identity/auth/device/hk;->qk:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hk;->gp()Lcom/amazon/identity/auth/device/hk$a;

    move-result-object v1

    .line 85
    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/hk$a;->addElement(Ljava/lang/String;)V

    .line 86
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/hk$a;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 2158
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hk;->w:Lcom/amazon/identity/auth/device/gc;

    const-string/jumbo v2, "user_dictionary"

    const-string/jumbo v3, "user_dictionary_content"

    iget-object v4, p0, Lcom/amazon/identity/auth/device/hk;->ql:Lcom/amazon/identity/auth/device/fs;

    .line 2159
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazon/identity/auth/device/fs;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2158
    invoke-virtual {v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1171
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/hk;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "username exceeds the size limit 64"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    new-instance p1, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper$UserDictionaryInvalidUserLoginException;

    const-string v0, "Username exceeds size limit 64"

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper$UserDictionaryInvalidUserLoginException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1166
    :cond_1
    sget-object p1, Lcom/amazon/identity/auth/device/hk;->TAG:Ljava/lang/String;

    const-string v0, "Empty username"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    new-instance p1, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper$UserDictionaryInvalidUserLoginException;

    const-string v0, "Try to write an empty username"

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/userdictionary/UserDictionaryHelper$UserDictionaryInvalidUserLoginException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public gn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hk;->gp()Lcom/amazon/identity/auth/device/hk$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hk$a;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public go()V
    .locals 5

    .line 92
    sget-object v0, Lcom/amazon/identity/auth/device/hk;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/amazon/identity/auth/device/hk;->qk:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hk;->w:Lcom/amazon/identity/auth/device/gc;

    const-string/jumbo v2, "user_dictionary"

    const-string/jumbo v3, "user_dictionary_content"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/gc;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected gp()Lcom/amazon/identity/auth/device/hk$a;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hk;->w:Lcom/amazon/identity/auth/device/gc;

    const-string/jumbo v1, "user_dictionary"

    const-string/jumbo v2, "user_dictionary_content"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/gc;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/hk;->cR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/hk$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 117
    :catch_0
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/hk;->go()V

    .line 119
    new-instance v0, Lcom/amazon/identity/auth/device/hk$a;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/hk$a;-><init>()V

    return-object v0
.end method
