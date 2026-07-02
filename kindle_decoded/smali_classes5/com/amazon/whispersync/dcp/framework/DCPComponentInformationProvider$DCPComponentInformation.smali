.class public Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;
.super Ljava/lang/Object;
.source "DCPComponentInformationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCPComponentInformation"
.end annotation


# instance fields
.field private mType:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;->mVersion:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;->mType:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;->mType:Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentType;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/DCPComponentInformationProvider$DCPComponentInformation;->mVersion:Ljava/lang/String;

    return-object v0
.end method
