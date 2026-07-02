.class final Lcom/amazon/identity/auth/device/cd$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/dj<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hT:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/identity/auth/device/cd$1;->hT:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/content/ContentProviderClient;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/cd$1;->c(Landroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/ContentProviderClient;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/amazon/identity/auth/device/cd$1;->hT:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v0, v7

    .line 97
    sget-object v2, Lcom/amazon/device/information/contract/DeviceInformationContract$DeviceInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, v0

    .line 98
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 102
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    aget-object v0, v0, v7

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hz;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 104
    :cond_1
    :try_start_1
    new-instance v0, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;

    const-string v1, "Null or empty result returned from Amazon Device Information Provider."

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/framework/RemoteMAPException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_2
    throw v0
.end method
