.class public Lcom/amazon/identity/auth/device/x$b;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$b;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public A()Lcom/amazon/identity/auth/device/i;
    .locals 2

    .line 102
    new-instance v0, Lcom/amazon/identity/auth/device/i;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x$b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/amazon/identity/auth/device/aj;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;
    .locals 2

    .line 96
    new-instance v0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/x$b;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;-><init>(Lcom/amazon/identity/auth/device/aj;Landroid/content/Context;)V

    return-object v0
.end method
