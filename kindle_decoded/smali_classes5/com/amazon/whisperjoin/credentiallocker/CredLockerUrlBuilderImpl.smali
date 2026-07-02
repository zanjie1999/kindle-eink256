.class Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilderImpl;
.super Ljava/lang/Object;
.source "CredLockerUrlBuilderImpl.java"

# interfaces
.implements Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilder;


# static fields
.field private static final V1_CRED_LOCKER_PATH:Ljava/lang/String; = "/credentiallocker/v1"


# instance fields
.field private final endpointResolver:Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolver;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolver;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whisperjoin/credentiallocker/CredLockerUrlBuilderImpl;->endpointResolver:Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolver;

    return-void
.end method
