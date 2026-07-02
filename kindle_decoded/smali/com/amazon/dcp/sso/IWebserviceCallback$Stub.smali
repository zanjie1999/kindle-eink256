.class public abstract Lcom/amazon/dcp/sso/IWebserviceCallback$Stub;
.super Landroid/os/Binder;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/IWebserviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/sso/IWebserviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/dcp/sso/IWebserviceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.dcp.sso.IWebserviceCallback"

.field static final TRANSACTION_onAuthenticationFailed:I = 0x3

.field static final TRANSACTION_onBadResponse:I = 0x4

.field static final TRANSACTION_onInvalidRequest:I = 0x5

.field static final TRANSACTION_onNetworkError:I = 0x2

.field static final TRANSACTION_onResponseReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.dcp.sso.IWebserviceCallback"

    .line 37
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/IWebserviceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.dcp.sso.IWebserviceCallback"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/amazon/dcp/sso/IWebserviceCallback;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/amazon/dcp/sso/IWebserviceCallback;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/amazon/dcp/sso/IWebserviceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/dcp/sso/IWebserviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/amazon/dcp/sso/IWebserviceCallback;
    .locals 1

    .line 245
    sget-object v0, Lcom/amazon/dcp/sso/IWebserviceCallback$Stub$Proxy;->sDefaultImpl:Lcom/amazon/dcp/sso/IWebserviceCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/amazon/dcp/sso/IWebserviceCallback;)Z
    .locals 1

    .line 235
    sget-object v0, Lcom/amazon/dcp/sso/IWebserviceCallback$Stub$Proxy;->sDefaultImpl:Lcom/amazon/dcp/sso/IWebserviceCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 239
    sput-object p0, Lcom/amazon/dcp/sso/IWebserviceCallback$Stub$Proxy;->sDefaultImpl:Lcom/amazon/dcp/sso/IWebserviceCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 236
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.amazon.dcp.sso.IWebserviceCallback"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 105
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-interface {p0}, Lcom/amazon/dcp/sso/IWebserviceCallback;->onInvalidRequest()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 98
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-interface {p0}, Lcom/amazon/dcp/sso/IWebserviceCallback;->onBadResponse()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 91
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Lcom/amazon/dcp/sso/IWebserviceCallback;->onAuthenticationFailed()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 84
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Lcom/amazon/dcp/sso/IWebserviceCallback;->onNetworkError()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 70
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 78
    invoke-interface {p0, v1, v2, p1, p2}, Lcom/amazon/dcp/sso/IWebserviceCallback;->onResponseReceived(JLjava/util/Map;[B)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
