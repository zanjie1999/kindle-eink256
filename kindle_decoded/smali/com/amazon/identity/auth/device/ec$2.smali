.class Lcom/amazon/identity/auth/device/ec$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ec;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/dj<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic lf:Landroid/net/Uri;

.field final synthetic li:Lcom/amazon/identity/auth/device/ec;

.field final synthetic lj:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ec;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ec$2;->li:Lcom/amazon/identity/auth/device/ec;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ec$2;->lf:Landroid/net/Uri;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ec$2;->lj:Landroid/content/ContentValues;

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

    .line 53
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ec$2;->dT()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public dT()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ec$2;->li:Lcom/amazon/identity/auth/device/ec;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ec;->a(Lcom/amazon/identity/auth/device/ec;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ec$2;->lf:Landroid/net/Uri;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ec$2;->lj:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
