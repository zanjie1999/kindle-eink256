.class public abstract Lcom/amazon/kindle/cms/ipc/AppCallback$Stub;
.super Landroid/os/Binder;
.source "AppCallback.java"

# interfaces
.implements Lcom/amazon/kindle/cms/ipc/AppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/AppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.kindle.cms.ipc.AppCallback"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.kindle.cms.ipc.AppCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
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

    const-string v0, "com.amazon.kindle.cms.ipc.AppCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 91
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    move-result-object v3

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 103
    sget-object p1, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;

    move-object v2, p0

    .line 104
    invoke-interface/range {v2 .. v8}, Lcom/amazon/kindle/cms/ipc/AppCallback;->executeEx(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;)[I

    move-result-object p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 75
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    move-result-object v3

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 86
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/cms/ipc/AppCallback;->notifyAction(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 57
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    move-result-object v3

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 68
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/cms/ipc/AppCallback;->execute(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 47
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-interface {p0, p1, p2}, Lcom/amazon/kindle/cms/ipc/AppCallback;->sync(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;)V

    return v1
.end method
