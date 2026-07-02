.class public Lcom/amazon/whispersync/AmazonDevice/Common/XMLSoftwareVersions;
.super Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;
.source "XMLSoftwareVersions.java"


# instance fields
.field private final mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLSoftwareVersions;->mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;

    return-void
.end method


# virtual methods
.method toXML(Lorg/w3c/dom/Element;)V
    .locals 10

    .line 18
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLSoftwareVersions;->mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->getNumVersions()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;

    const-string/jumbo v3, "softwareVersions"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)V

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    .line 24
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLSoftwareVersions;->mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;

    invoke-virtual {v5}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->getNumVersions()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 26
    new-instance v5, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;

    new-instance v7, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;

    iget-object v8, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLSoftwareVersions;->mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;

    invoke-virtual {v8, v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->getVersionName(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "name"

    invoke-direct {v7, v9, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v1

    new-instance v7, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;

    iget-object v8, p0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLSoftwareVersions;->mSoftwareVersions:Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;

    invoke-virtual {v8, v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/SoftwareVersions;->getVersionValue(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-direct {v7, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v7, v6, v3

    const-string/jumbo v3, "softwareVersion"

    invoke-direct {v5, v3, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;-><init>(Ljava/lang/String;[Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)V

    invoke-virtual {v0, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->addNewChild(Lcom/amazon/whispersync/AmazonDevice/Common/XMLEntity;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLElement;->toXML(Lorg/w3c/dom/Element;)V

    :cond_2
    :goto_1
    return-void
.end method
