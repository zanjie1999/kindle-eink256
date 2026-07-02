.class public abstract Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;
.super Ljava/lang/Object;
.source "ITokenAuthProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPrivateKey()Ljava/lang/String;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method
