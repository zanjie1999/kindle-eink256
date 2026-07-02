.class public abstract Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;
.super Landroid/os/Binder;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/ISubAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/sso/ISubAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.dcp.sso.ISubAuthenticator"

.field static final TRANSACTION_getAccountRemovalAllowed:I = 0x2

.field static final TRANSACTION_getAuthToken:I = 0x1

.field static final TRANSACTION_updateAuthToken:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.dcp.sso.ISubAuthenticator"

    .line 39
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/ISubAuthenticator;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.dcp.sso.ISubAuthenticator"

    .line 50
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v1, v0, Lcom/amazon/dcp/sso/ISubAuthenticator;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Lcom/amazon/dcp/sso/ISubAuthenticator;

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/amazon/dcp/sso/ISubAuthenticator;
    .locals 1

    .line 258
    sget-object v0, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;->sDefaultImpl:Lcom/amazon/dcp/sso/ISubAuthenticator;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/amazon/dcp/sso/ISubAuthenticator;)Z
    .locals 1

    .line 248
    sget-object v0, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;->sDefaultImpl:Lcom/amazon/dcp/sso/ISubAuthenticator;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 252
    sput-object p0, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub$Proxy;->sDefaultImpl:Lcom/amazon/dcp/sso/ISubAuthenticator;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 249
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.amazon.dcp.sso.ISubAuthenticator"

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 109
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    move-result-object v3

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    :cond_2
    move-object v7, v0

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    move-result-object v8

    move-object v2, p0

    .line 127
    invoke-interface/range {v2 .. v8}, Lcom/amazon/dcp/sso/ISubAuthenticator;->updateAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 96
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    move-result-object p1

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-interface {p0, p1, p4, p2}, Lcom/amazon/dcp/sso/ISubAuthenticator;->getAccountRemovalAllowed(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 72
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    move-result-object v3

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 83
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    :cond_5
    move-object v7, v0

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;

    move-result-object v8

    move-object v2, p0

    .line 90
    invoke-interface/range {v2 .. v8}, Lcom/amazon/dcp/sso/ISubAuthenticator;->getAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
