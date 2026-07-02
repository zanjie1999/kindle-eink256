.class public final Lcom/amazon/identity/auth/device/gz$c;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/gz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final bi:Ljava/lang/String;

.field pv:Lcom/amazon/identity/auth/device/gz$b;

.field pw:Lcom/amazon/identity/auth/device/gz$a;

.field px:Lcom/amazon/identity/auth/device/gz$b;

.field py:Lcom/amazon/identity/auth/device/gz$a;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gz$c;->bi:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/gz$c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fZ()Lcom/amazon/identity/auth/device/gz$a;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$c;->py:Lcom/amazon/identity/auth/device/gz$a;

    return-object v0
.end method

.method public ga()Lcom/amazon/identity/auth/device/gz$b;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$c;->px:Lcom/amazon/identity/auth/device/gz$b;

    return-object v0
.end method

.method public gb()Lcom/amazon/identity/auth/device/gz$a;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$c;->pw:Lcom/amazon/identity/auth/device/gz$a;

    return-object v0
.end method

.method public gc()Lcom/amazon/identity/auth/device/gz$b;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$c;->pv:Lcom/amazon/identity/auth/device/gz$b;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz$c;->bi:Ljava/lang/String;

    return-object v0
.end method
