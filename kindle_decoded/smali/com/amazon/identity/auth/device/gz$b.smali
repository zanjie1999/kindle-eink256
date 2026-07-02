.class public final Lcom/amazon/identity/auth/device/gz$b;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final pt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gz$b;->pt:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gz$b;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fY()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$b;->pt:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$b;->pt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
