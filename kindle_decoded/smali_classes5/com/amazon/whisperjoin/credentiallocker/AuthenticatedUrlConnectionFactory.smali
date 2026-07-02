.class public Lcom/amazon/whisperjoin/credentiallocker/AuthenticatedUrlConnectionFactory;
.super Ljava/lang/Object;
.source "AuthenticatedUrlConnectionFactory.java"

# interfaces
.implements Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;


# instance fields
.field private final authMethod:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/credentiallocker/AuthenticatedUrlConnectionFactory;->authMethod:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    return-void
.end method
