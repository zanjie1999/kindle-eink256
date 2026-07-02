.class public interface abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
.super Ljava/lang/Object;
.source "MapAuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider$DefaultMapAuthAccountProvider;
    }
.end annotation


# virtual methods
.method public abstract generatePreAuthLinkCode()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getOAuthToken()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
.end method
