.class public Lcom/amazon/reader/notifications/channel/ChannelSettings;
.super Ljava/lang/Object;
.source "ChannelSettings.java"


# instance fields
.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/reader/notifications/channel/ChannelDescription;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/reader/notifications/channel/ChannelDescription;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/reader/notifications/channel/ChannelSettings;->channels:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/amazon/reader/notifications/channel/ChannelSettings;->version:I

    return v0
.end method

.method public setChannels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/reader/notifications/channel/ChannelDescription;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/amazon/reader/notifications/channel/ChannelSettings;->channels:Ljava/util/List;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/amazon/reader/notifications/channel/ChannelSettings;->version:I

    return-void
.end method
