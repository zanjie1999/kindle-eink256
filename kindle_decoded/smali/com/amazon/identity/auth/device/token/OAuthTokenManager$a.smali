.class public Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/token/OAuthTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final bi:Ljava/lang/String;

.field final mAccessToken:Ljava/lang/String;

.field final mP:Ljava/lang/String;

.field final pr:I

.field final ps:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 2513
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2523
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    .line 2524
    iput p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->pr:I

    .line 2525
    iput-object p4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->ps:Ljava/lang/String;

    .line 2526
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mP:Ljava/lang/String;

    .line 2527
    iput-object p5, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->bi:Ljava/lang/String;

    return-void
.end method
