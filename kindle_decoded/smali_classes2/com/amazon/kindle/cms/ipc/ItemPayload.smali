.class public abstract Lcom/amazon/kindle/cms/ipc/ItemPayload;
.super Lcom/amazon/kindle/cms/ipc/Pipeable;
.source "ItemPayload.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/Pipeable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/Pipeable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method abstract getPayloadCode()B
.end method

.method public getPipeCode()I
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Item payload cannot be put directly into pipe"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
