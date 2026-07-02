.class Lcom/amazon/identity/auth/device/ec$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ec;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/dj<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic lf:Landroid/net/Uri;

.field final synthetic lg:Ljava/lang/String;

.field final synthetic lh:[Ljava/lang/String;

.field final synthetic li:Lcom/amazon/identity/auth/device/ec;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ec;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ec$1;->li:Lcom/amazon/identity/auth/device/ec;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ec$1;->lf:Landroid/net/Uri;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ec$1;->lg:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/ec$1;->lh:[Ljava/lang/String;

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

    .line 41
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ec$1;->dS()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public dS()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ec$1;->li:Lcom/amazon/identity/auth/device/ec;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ec;->a(Lcom/amazon/identity/auth/device/ec;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ec$1;->lf:Landroid/net/Uri;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ec$1;->lg:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ec$1;->lh:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
