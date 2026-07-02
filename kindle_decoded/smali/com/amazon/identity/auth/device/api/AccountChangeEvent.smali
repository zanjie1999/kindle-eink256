.class public Lcom/amazon/identity/auth/device/api/AccountChangeEvent;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final ft:Ljava/lang/String;

.field private final fu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AccountChangeEvent;->ft:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/AccountChangeEvent;->fu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentAccount()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AccountChangeEvent;->fu:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousAccount()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AccountChangeEvent;->ft:Ljava/lang/String;

    return-object v0
.end method
