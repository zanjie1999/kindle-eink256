.class public Lcom/amazon/kindle/com/amazonaws/auth/NoOpSigner;
.super Ljava/lang/Object;
.source "NoOpSigner.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/Signer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sign(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;",
            ")V"
        }
    .end annotation

    return-void
.end method
