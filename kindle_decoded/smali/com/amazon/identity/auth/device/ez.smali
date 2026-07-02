.class public Lcom/amazon/identity/auth/device/ez;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ex;


# static fields
.field private static final TAG:Ljava/lang/String; = "ez"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .line 20
    new-instance v0, Lcom/amazon/identity/auth/device/ek;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/ek;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/ek;->bD(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    .line 27
    sget-object p3, Lcom/amazon/identity/auth/device/ez;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAP trust "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", since the signature check passed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_1
    sget-object p2, Lcom/amazon/identity/auth/device/ez;->TAG:Ljava/lang/String;

    const-string p3, "MAP doesn\'t trust the package. Usually it is because the app is signed with a different cert comparing to current package"

    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "signature based package trust logic"

    return-object v0
.end method
