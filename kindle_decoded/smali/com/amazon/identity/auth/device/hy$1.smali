.class final Lcom/amazon/identity/auth/device/hy$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hy;->a(Lcom/amazon/identity/auth/device/ec;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
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
.field final synthetic du:Landroid/net/Uri;

.field final synthetic hT:Ljava/lang/String;

.field final synthetic lh:[Ljava/lang/String;

.field final synthetic qL:Ljava/lang/String;

.field final synthetic qM:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hy$1;->du:Landroid/net/Uri;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hy$1;->hT:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hy$1;->qL:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hy$1;->lh:[Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/hy$1;->qM:Ljava/lang/String;

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

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/hy$1;->c(Landroid/content/ContentProviderClient;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/ContentProviderClient;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hy$1;->du:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/hy$1;->hT:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v3, p0, Lcom/amazon/identity/auth/device/hy$1;->qL:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/hy$1;->lh:[Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/hy$1;->qM:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hy$1;->hT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/hy;->h(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 97
    throw v0
.end method
