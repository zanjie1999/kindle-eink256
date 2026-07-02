.class public Lcom/amazon/identity/auth/device/dr;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/dr$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.dr"


# instance fields
.field private final kd:Lcom/amazon/identity/auth/device/dr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/dr$a;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dr;->kd:Lcom/amazon/identity/auth/device/dr$a;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/dr;)Lcom/amazon/identity/auth/device/dr$a;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/identity/auth/device/dr;->kd:Lcom/amazon/identity/auth/device/dr$a;

    return-object p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/identity/auth/device/dr;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    invoke-virtual {p0, p2, p3}, Lcom/amazon/identity/auth/device/dr;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    sget-object p3, Lcom/amazon/identity/auth/device/dr;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading callback javascript: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 94
    new-instance p3, Lcom/amazon/identity/auth/device/dr$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/amazon/identity/auth/device/dr$3;-><init>(Lcom/amazon/identity/auth/device/dr;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 108
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "javascript:if (typeof %1$s !== \'undefined\' && typeof %1$s === \'function\'){%1$s(%2$s);}"

    .line 113
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCF()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 49
    new-instance v0, Lcom/amazon/identity/auth/device/dr$1;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/dr$1;-><init>(Lcom/amazon/identity/auth/device/dr;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reqPerm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 74
    new-instance v0, Lcom/amazon/identity/auth/device/dr$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/dr$2;-><init>(Lcom/amazon/identity/auth/device/dr;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method
