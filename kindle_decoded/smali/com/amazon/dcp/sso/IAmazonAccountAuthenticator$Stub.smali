.class public abstract Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub;
.super Landroid/os/Binder;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.dcp.sso.IAmazonAccountAuthenticator"


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.dcp.sso.IAmazonAccountAuthenticator"

    .line 85
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    instance-of v1, v0, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;
    .locals 1

    .line 353
    sget-object v0, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub$Proxy;->sDefaultImpl:Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    return-object v0
.end method
