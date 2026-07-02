.class public abstract Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;
.super Ljava/lang/Object;
.source "ChainableUserRegistrationHandler.java"

# interfaces
.implements Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;


# instance fields
.field private final nextHandler:Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;-><init>(Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;->nextHandler:Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;

    return-void
.end method


# virtual methods
.method protected abstract onDeregistration()V
.end method

.method protected abstract onRegistration(Lcom/amazon/kindle/krx/application/IUserAccount;)V
.end method

.method public final onUserDeregistration()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;->onDeregistration()V

    .line 61
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;->nextHandler:Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;->onDeregistration()V

    :cond_0
    return-void
.end method

.method public final onUserRegistration(Lcom/amazon/kindle/krx/application/IUserAccount;)V
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;->onRegistration(Lcom/amazon/kindle/krx/application/IUserAccount;)V

    .line 48
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;->nextHandler:Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/extensions/registration/ChainableUserRegistrationHandler;->onRegistration(Lcom/amazon/kindle/krx/application/IUserAccount;)V

    :cond_0
    return-void
.end method
