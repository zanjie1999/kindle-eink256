.class public final Lcom/amazon/identity/auth/device/gz$a;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final pt:Ljava/lang/String;

.field private final pu:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gz$a;->pt:Ljava/lang/String;

    .line 89
    iput p2, p0, Lcom/amazon/identity/auth/device/gz$a;->pu:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/gz$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public fX()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/amazon/identity/auth/device/gz$a;->pu:I

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$a;->pt:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$a;->pt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amazon/identity/auth/device/gz$a;->pu:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
