.class public Lamazon/whispersync/communication/rmr/RmrResponseCleanedUpException;
.super Lamazon/whispersync/communication/rmr/RmrResponseException;
.source "RmrResponseCleanedUpException.java"


# static fields
.field public static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Underlying RmrManager was cleaned up while a response was still pending"

    .line 24
    invoke-direct {p0, v0}, Lamazon/whispersync/communication/rmr/RmrResponseException;-><init>(Ljava/lang/String;)V

    return-void
.end method
