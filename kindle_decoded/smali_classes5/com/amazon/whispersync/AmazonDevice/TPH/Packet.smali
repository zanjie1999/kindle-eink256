.class public abstract Lcom/amazon/whispersync/AmazonDevice/TPH/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getType()Lcom/amazon/whispersync/AmazonDevice/TPH/PhoneHomeMessageType;
.end method

.method public abstract isValid()Z
.end method
