.class public Lcom/amazon/identity/auth/device/al;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/al$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.al"


# instance fields
.field private final cm:Lcom/amazon/identity/auth/device/ek;

.field private final da:Lcom/amazon/identity/auth/device/ak;

.field private final db:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

.field private final dc:Ljava/lang/Object;

.field private dd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;"
        }
    .end annotation
.end field

.field private de:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/amazon/identity/auth/device/ak;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/ak;-><init>()V

    new-instance v1, Lcom/amazon/identity/auth/device/ek;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p1

    .line 60
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/identity/auth/device/al;-><init>(Lcom/amazon/identity/auth/device/ak;Lcom/amazon/identity/auth/device/ek;Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ak;Lcom/amazon/identity/auth/device/ek;Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/amazon/identity/auth/device/al;->dc:Ljava/lang/Object;

    .line 34
    iput v0, p0, Lcom/amazon/identity/auth/device/al;->de:I

    .line 70
    iput-object p2, p0, Lcom/amazon/identity/auth/device/al;->cm:Lcom/amazon/identity/auth/device/ek;

    .line 71
    iput-object p3, p0, Lcom/amazon/identity/auth/device/al;->db:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    .line 72
    iput-object p1, p0, Lcom/amazon/identity/auth/device/al;->da:Lcom/amazon/identity/auth/device/ak;

    return-void
.end method

.method private aa()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/al;->dc:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget v1, p0, Lcom/amazon/identity/auth/device/al;->de:I

    .line 113
    iget-object v2, p0, Lcom/amazon/identity/auth/device/al;->dd:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/amazon/identity/auth/device/al;->dd:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 117
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/al;->ab()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/al;->ac()Ljava/util/List;

    move-result-object v2

    .line 1274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1275
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/identity/auth/device/aj;

    .line 1279
    iget-object v6, v5, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    .line 1280
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1281
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1283
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/aj;

    .line 1285
    iget-object v5, v2, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1287
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1291
    :cond_2
    sget-object v5, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Deduped sub-authenticator"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_3
    invoke-direct {p0, v3}, Lcom/amazon/identity/auth/device/al;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/amazon/identity/auth/device/al;->dc:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_1
    iget v3, p0, Lcom/amazon/identity/auth/device/al;->de:I

    if-ne v1, v3, :cond_4

    .line 134
    iput-object v0, p0, Lcom/amazon/identity/auth/device/al;->dd:Ljava/util/List;

    .line 136
    :cond_4
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 117
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private ab()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.dcp.sso.AccountSubAuthenticator"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/amazon/identity/auth/device/al;->cm:Lcom/amazon/identity/auth/device/ek;

    const/16 v3, 0x80

    .line 151
    invoke-virtual {v2, v1, v3}, Lcom/amazon/identity/auth/device/ek;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    :try_start_0
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 159
    iget-object v5, p0, Lcom/amazon/identity/auth/device/al;->cm:Lcom/amazon/identity/auth/device/ek;

    .line 160
    invoke-virtual {v5, v2}, Lcom/amazon/identity/auth/device/ek;->a(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 169
    iget-object v6, p0, Lcom/amazon/identity/auth/device/al;->da:Lcom/amazon/identity/auth/device/ak;

    iget-object v7, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 170
    invoke-virtual {v6, v7, v2, v5}, Lcom/amazon/identity/auth/device/ak;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Lcom/amazon/identity/auth/device/aj;

    move-result-object v2

    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v5, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    const-string v6, "Detected sub-authenticator: %s/%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v8, v2, Lcom/amazon/identity/auth/device/aj;->className:Ljava/lang/String;

    aput-object v8, v7, v3

    .line 175
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 176
    sget-object v5, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    const-string v6, " Supports token types:"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 177
    iget-object v2, v2, Lcom/amazon/identity/auth/device/aj;->cT:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    sget-object v6, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    const-string v7, "  %s"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v5, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "%s does not have a valid sub authenticator metadata file"

    new-array v6, v3, [Ljava/lang/Object;

    .line 164
    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v2, v6, v4

    .line 165
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v5, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;

    invoke-direct {v5, v2}, Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 185
    sget-object v5, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "Ignored invalid sub authenticator from calling package : %s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method private ac()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/al;->ad()Ljava/util/List;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/al$a;

    .line 199
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/al$a;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/al$a;->ae()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 204
    :try_start_0
    iget-object v6, p0, Lcom/amazon/identity/auth/device/al;->da:Lcom/amazon/identity/auth/device/ak;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v2}, Lcom/amazon/identity/auth/device/ak;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Lcom/amazon/identity/auth/device/aj;

    move-result-object v2

    .line 205
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v3, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    const-string v6, "Detected DMS sub-authenticator: %s/%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    aput-object v8, v7, v5

    iget-object v8, v2, Lcom/amazon/identity/auth/device/aj;->className:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 207
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 208
    sget-object v3, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    const-string v6, " Supports token types:"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 209
    iget-object v2, v2, Lcom/amazon/identity/auth/device/aj;->cT:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    sget-object v6, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    const-string v7, "  %s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v3, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 217
    sget-object v3, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Ignored invalid sub authenticator from calling package : %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private ad()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/al$a;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/amazon/identity/auth/device/al;->cm:Lcom/amazon/identity/auth/device/ek;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ek;->ed()Ljava/util/Set;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/al;->cm:Lcom/amazon/identity/auth/device/ek;

    invoke-virtual {v3, v2}, Lcom/amazon/identity/auth/device/ek;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "dms_sub_authenticator"

    const-string/jumbo v5, "xml"

    .line 253
    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 259
    new-instance v4, Lcom/amazon/identity/auth/device/al$a;

    invoke-direct {v4, v2, v3}, Lcom/amazon/identity/auth/device/al$a;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 260
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    sget-object v3, Lcom/amazon/identity/auth/device/al;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot get resources for applicatoin. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/aj;

    .line 303
    iget-object v2, v1, Lcom/amazon/identity/auth/device/aj;->packageName:Ljava/lang/String;

    .line 304
    iget-object v3, p0, Lcom/amazon/identity/auth/device/al;->db:Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    invoke-virtual {v3, v2}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bm(Ljava/lang/String;)Lcom/amazon/identity/auth/device/du;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const-string v2, "Package %s is not a MAP R5 app, so using it\'s Sub Auth."

    .line 308
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "Package %s is a MAP R5 app, so not using it\'s Sub Auth."

    .line 313
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public Z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/aj;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/al;->aa()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
