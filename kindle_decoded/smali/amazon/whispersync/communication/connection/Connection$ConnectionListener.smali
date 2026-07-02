.class public interface abstract Lamazon/whispersync/communication/connection/Connection$ConnectionListener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamazon/whispersync/communication/connection/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionListener"
.end annotation


# virtual methods
.method public abstract onClosed(Lamazon/whispersync/communication/connection/Connection;Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V
.end method

.method public abstract onOpened(Lamazon/whispersync/communication/connection/Connection;)V
.end method
