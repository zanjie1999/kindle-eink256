.class public Lcom/amazon/identity/auth/device/ak;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/ak$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Lcom/amazon/identity/auth/device/aj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/accounts/InvalidSubAuthenticatorDefinitionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 30
    new-instance v0, Lcom/amazon/identity/auth/device/ak$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/ak$a;-><init>(B)V

    .line 31
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/ak$a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Lcom/amazon/identity/auth/device/aj;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The package name and xml parser parameter cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
