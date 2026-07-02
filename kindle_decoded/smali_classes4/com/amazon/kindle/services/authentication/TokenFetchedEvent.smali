.class public Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;
.super Ljava/lang/Object;
.source "TokenFetchedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private account:Ljava/lang/String;

.field private key:Lcom/amazon/kindle/services/authentication/TokenKey;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->key:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 21
    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->value:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->account:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Lcom/amazon/kindle/services/authentication/TokenKey;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->key:Lcom/amazon/kindle/services/authentication/TokenKey;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
