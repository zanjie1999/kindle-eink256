.class public Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;
.super Ljava/lang/Object;
.source "SoftwareVersions.java"


# instance fields
.field public final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mNames:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mValues:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mNames:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mValues:Ljava/util/List;

    iget-object p1, p1, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static isValidVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 56
    invoke-static {p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->isValidVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "SoftwareVersions: addVersion: could not add version because it is invalid."

    .line 64
    invoke-static {v0, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public getNumVersions()J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVersionName(J)Ljava/lang/String;
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->getNumVersions()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SoftwareVersions: getVersionName: index is out of range"

    .line 34
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mNames:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getVersionValue(J)Ljava/lang/String;
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->getNumVersions()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SoftwareVersions: getVersionValue: index is out of range"

    .line 43
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->mValues:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
