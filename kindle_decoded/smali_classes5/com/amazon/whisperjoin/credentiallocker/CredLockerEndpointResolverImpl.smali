.class Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolverImpl;
.super Ljava/lang/Object;
.source "CredLockerEndpointResolverImpl.java"

# interfaces
.implements Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolver;


# static fields
.field private static final TAG:Ljava/lang/String; = "CredLockerEndpoint"

.field private static final V1_CRED_LOCKER_PATH:Ljava/lang/String; = "/credentiallocker/v1"

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private final connectionFactory:Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;

.field private final defaultEndpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolverImpl;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method constructor <init>(Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolverImpl;->connectionFactory:Lcom/amazon/whisperjoin/credentiallocker/HttpUrlConnectionFactory;

    .line 28
    iput-object p2, p0, Lcom/amazon/whisperjoin/credentiallocker/CredLockerEndpointResolverImpl;->defaultEndpoint:Ljava/lang/String;

    return-void
.end method
