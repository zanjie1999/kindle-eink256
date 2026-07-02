.class public Lcom/amazon/identity/auth/device/bp$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final hx:Ljava/lang/String;

.field public final mErrorCode:Ljava/lang/String;

.field public final mErrorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Unrecognized"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bp$a;->mErrorCode:Ljava/lang/String;

    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bp$a;->mErrorMessage:Ljava/lang/String;

    .line 50
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p3, "No error index"

    :goto_2
    iput-object p3, p0, Lcom/amazon/identity/auth/device/bp$a;->hx:Ljava/lang/String;

    return-void
.end method
