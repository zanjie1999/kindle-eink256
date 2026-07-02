.class public Lcom/amazon/whisperbridge/ProvisioningStatus;
.super Ljava/lang/Object;
.source "ProvisioningStatus.java"


# instance fields
.field private final mIsProvisioner:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/amazon/whisperbridge/ProvisioningStatus;->mIsProvisioner:Z

    return-void
.end method


# virtual methods
.method public isProvisioner()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/amazon/whisperbridge/ProvisioningStatus;->mIsProvisioner:Z

    return v0
.end method
