.class public Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingAlreadySetException;
.super Ljava/lang/RuntimeException;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MultipleAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionPackageMappingAlreadySetException"
.end annotation


# instance fields
.field private final mOwner:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingAlreadySetException;->mOwner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOwner()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionPackageMappingAlreadySetException;->mOwner:Ljava/lang/String;

    return-object v0
.end method
