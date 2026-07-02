.class public abstract Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub;
.super Landroid/os/Binder;
.source "CMSServiceCalls.java"

# interfaces
.implements Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.kindle.cms.ipc.CMSServiceCalls"


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.kindle.cms.ipc.CMSServiceCalls"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
