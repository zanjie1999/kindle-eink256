.class public interface abstract Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider;
.super Ljava/lang/Object;
.source "IDCPComponentInformationProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/IDCPComponentInformationProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract getComponentVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
